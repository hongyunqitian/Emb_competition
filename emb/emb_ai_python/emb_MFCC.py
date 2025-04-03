import librosa
import numpy as np
import os

def extract_mfcc(audio_path, sr=16000, n_mfcc=20, duration=1):
    # 加载音频文件，限制时长为指定秒数，采样率为指定Hz
    y, _ = librosa.load(audio_path, sr=sr, duration=duration)
    # 提取MFCC特征
    mfcc = librosa.feature.mfcc(y=y, sr=sr, n_mfcc=n_mfcc, n_fft=400, hop_length=160)
    # 转置为(时间帧数, n_mfcc)
    mfcc = mfcc.T
    # 标准化
    mfcc_mean = np.mean(mfcc, axis=0)
    mfcc_std = np.std(mfcc, axis=0)
    mfcc = (mfcc - mfcc_mean) / (mfcc_std + 1e-8)  # 避免除以零
    return mfcc

if __name__ == '__main__':
    # 文件路径
    audio_path = 'D:/ALL_PROJECT/ALL_STM32_PROJECT/ALL_STM32_CUBEMX_PROJECT/emb_competition/模块资料/dataset/dataset/B_BRI01_MC_FI_SIM01_301.wav'
    
    # 提取MFCC特征
    print(f"正在从文件提取MFCC特征: {audio_path}")
    mfcc_features = extract_mfcc(audio_path)
    
    # 输出文件路径
    output_file = 'mfcc_features.txt'
    
    # 将MFCC特征和统计信息保存到txt文件
    with open(output_file, 'w') as f:
        f.write(f"MFCC特征形状: {mfcc_features.shape}\n\n")
        f.write("MFCC特征完整数据:\n")
        
        # 格式化输出MFCC特征矩阵
        for row in mfcc_features:
            # 使用制表符分隔数据，保留4位小数
            line = '\t'.join([f"{val:.4f}" for val in row])
            f.write(line + '\n')
        
        f.write("\nMFCC特征统计信息:\n")
        f.write(f"最小值: {np.min(mfcc_features):.4f}\n")
        f.write(f"最大值: {np.max(mfcc_features):.4f}\n")
        f.write(f"均值: {np.mean(mfcc_features):.4f}\n")
        f.write(f"标准差: {np.std(mfcc_features):.4f}\n")
    
    # 打印文件保存信息
    abs_path = os.path.abspath(output_file)
    print(f"MFCC特征数据已保存到文件: {abs_path}")
    print(f"文件大小: {os.path.getsize(output_file)/1024:.2f} KB")