// pages/emb_wx/emb_wx.js
Page({
  data: {
    imageUrl: '',
    inputData: '',
    status: '等待输入',
    imageSize: null,
    frameCount: 0,
    isProcessing: false
  },

  onLoad(options) {
    // 页面加载时自动处理数据
    if(this.data.inputData) {
      this.testHexData();
    }
  },
  
  // 输入数据改变
  onInputChange(e) {
    this.setData({
      inputData: e.detail.value
    });
  },
  
  // 测试十六进制数据
  testHexData() {
    if(this.data.isProcessing) return;
    
    this.setData({
      isProcessing: true,
      status: '正在处理数据...'
    });
    
    const hexString = this.data.inputData.trim();
    if (!hexString) {
      this.setData({ 
        status: '请输入十六进制数据',
        isProcessing: false
      });
      return;
    }
    
    try {
      // 移除所有空格、换行和其他非十六进制字符
      const cleanHex = hexString.replace(/[^0-9A-Fa-f]/g, '');
      
      // 检查是否是有效的十六进制字符串（长度必须是偶数）
      if (cleanHex.length % 2 !== 0) {
        this.setData({ 
          status: '无效的十六进制数据（长度必须是偶数）',
          isProcessing: false
        });
        return;
      }
      
      // 转换为字节数组
      const bytes = new Uint8Array(cleanHex.length / 2);
      for (let i = 0; i < cleanHex.length; i += 2) {
        bytes[i / 2] = parseInt(cleanHex.substr(i, 2), 16);
      }
      
      // 直接查找JPEG标记而不依赖帧头
      const result = this.parseJpegData(bytes);
      
      if (!result.success) {
        this.setData({ 
          status: result.error,
          isProcessing: false
        });
        return;
      }
      
      // 更新状态和图像
      this.setData({
        imageUrl: 'data:image/jpeg;base64,' + result.base64,
        status: `解析成功 (帧 #${this.data.frameCount + 1})`,
        imageSize: result.size,
        frameCount: this.data.frameCount + 1,
        isProcessing: false
      });
    } catch (error) {
      console.error('解析十六进制数据失败', error);
      this.setData({ 
        status: '解析失败: ' + error.message,
        isProcessing: false
      });
    }
  },
  
  // 测试Base64数据
  testBase64Data() {
    if(this.data.isProcessing) return;
    
    this.setData({
      isProcessing: true,
      status: '正在处理数据...'
    });
    
    const base64String = this.data.inputData.trim();
    if (!base64String) {
      this.setData({ 
        status: '请输入Base64数据',
        isProcessing: false
      });
      return;
    }
    
    try {
      // 移除可能的前缀
      let cleanBase64 = base64String;
      if (cleanBase64.includes('base64,')) {
        cleanBase64 = cleanBase64.split('base64,')[1];
      }
      
      // 验证是否为有效的Base64
      if (!/^[A-Za-z0-9+/=]+$/.test(cleanBase64)) {
        this.setData({ 
          status: '无效的Base64数据',
          isProcessing: false
        });
        return;
      }
      
      // 转换为二进制数据
      const binaryData = wx.base64ToArrayBuffer(cleanBase64);
      const bytes = new Uint8Array(binaryData);
      
      // 检查JPEG头部
      if (bytes.length < 2 || bytes[0] !== 0xFF || bytes[1] !== 0xD8) {
        this.setData({ 
          status: '无效的JPEG数据（缺少FF D8签名）',
          isProcessing: false
        });
        return;
      }
      
      // 更新状态和图像
      this.setData({
        imageUrl: 'data:image/jpeg;base64,' + cleanBase64,
        status: `解析成功 (帧 #${this.data.frameCount + 1})`,
        imageSize: bytes.length,
        frameCount: this.data.frameCount + 1,
        isProcessing: false
      });
    } catch (error) {
      console.error('解析Base64数据失败', error);
      this.setData({ 
        status: '解析失败: ' + error.message,
        isProcessing: false
      });
    }
  },
  
  // 清除图像
  clearImage() {
    this.setData({
      imageUrl: '',
      status: '图像已清除',
      imageSize: null,
      inputData: '' // 清空输入数据
    });
  },
  
  // JPEG数据处理函数
  parseJpegData(data) {
    // 查找JPEG开始标记 (FF D8)
    let jpegStart = -1;
    for (let i = 0; i < data.length - 1; i++) {
      if (data[i] === 0xFF && data[i + 1] === 0xD8) {
        jpegStart = i;
        break;
      }
    }
    
    if (jpegStart === -1) {
      return { success: false, error: '无效的JPEG数据（缺少FF D8签名）' };
    }
    
    // 查找JPEG结束标记 (FF D9)
    let jpegEnd = -1;
    for (let i = jpegStart + 2; i < data.length - 1; i++) {
      if (data[i] === 0xFF && data[i + 1] === 0xD9) {
        jpegEnd = i + 1; // 包含FF D9
        break;
      }
    }
    
    if (jpegEnd === -1) {
      // 如果没有找到结束标记，使用剩余全部数据
      jpegEnd = data.length - 1;
    }
    
    // 提取JPEG数据
    const jpegData = data.slice(jpegStart, jpegEnd + 1);
    
    // 确认头部
    if (jpegData[0] !== 0xFF || jpegData[1] !== 0xD8) {
      return { success: false, error: '无效的JPEG数据（不是以FF D8开始）' };
    }
    
    // 转换为Base64
    const base64 = wx.arrayBufferToBase64(jpegData);
    
    return {
      success: true,
      base64: base64,
      size: jpegData.length
    };
  },
  
  // 备用解析函数 - OpenMV格式
  parseOpenMVFormat(data) {
    // 查找帧头 (55 AA)
    let frameStart = -1;
    for (let i = 0; i < data.length - 1; i++) {
      if (data[i] === 0x55 && data[i + 1] === 0xAA) {
        frameStart = i;
        break;
      }
    }
    
    if (frameStart === -1) {
      // 如果找不到帧头，尝试直接查找JPEG数据
      return this.parseJpegData(data);
    }
    
    // 确保有足够的字节用于帧头和大小
    if (frameStart + 6 >= data.length) {
      return { success: false, error: '数据不完整，缺少大小信息' };
    }
    
    // 直接跳到帧头后的第7个字节，这里应该是JPEG数据开始(FF D8)
    const jpegStartOffset = frameStart + 6;
    
    if (jpegStartOffset >= data.length - 1 || 
        data[jpegStartOffset] !== 0xFF || 
        data[jpegStartOffset + 1] !== 0xD8) {
      // 如果在预期位置没有找到JPEG头，尝试搜索整个数据
      return this.parseJpegData(data);
    }
    
    // 查找JPEG结束标记(FF D9)
    let jpegEnd = -1;
    for (let i = jpegStartOffset + 2; i < data.length - 1; i++) {
      if (data[i] === 0xFF && data[i + 1] === 0xD9) {
        jpegEnd = i + 1; // 包含FF D9
        break;
      }
    }
    
    if (jpegEnd === -1) {
      // 如果没有找到JPEG结束标记，使用剩余全部数据
      jpegEnd = data.length - 1;
    }
    
    // 提取JPEG数据
    const jpegData = data.slice(jpegStartOffset, jpegEnd + 1);
    
    // 转换为Base64
    const base64 = wx.arrayBufferToBase64(jpegData);
    
    return {
      success: true,
      base64: base64,
      size: jpegData.length
    };
  }
})