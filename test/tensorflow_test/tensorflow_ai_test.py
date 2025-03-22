import numpy as np
import tensorflow as tf 
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler
import os #导入os模块，用于文件操作
#模拟数据
def input_data(num_samples=10000,num_features=5 ):#num_samples:样本数量，num_features:特征数量
    #随机数种子 确保结果可重现
    np.random.seed(42)#设置随机数种子
    x = np.random.rand(num_samples,num_features)
    y = np.random.randint(0,2,size=num_samples)
    return x,y


#数据预处理
def preprocess_data(x,y):
    #1.创建标准化对象
    scaler = StandardScaler()#创建标准化对象
    #2.标准化训练数据
    x = scaler.fit_transform(x)#标准化训练数据
    #3.保存标准化参数
    # 保存均值(mean_)和标准差(scale_)参数
    # 这些参数在模型部署时需要用来标准化新数据
    np.save('scaler.npy',{'mean':scaler.mean_,'std':scaler.scale_})
    #4.分割训练集和数据集
    # X_scaled: 标准化后的特征数据
    # y: 目标变量
    # test_size=0.2: 测试集占20%
    # random_state=42: 设置随机种子，确保结果可重现
    x_train,x_test,y_train,y_test = train_test_split(x,y,test_size=0.2,random_state=42)
    return x_train,x_test,y_train,y_test

#创建模型
#输入层与第一隐藏层
# 常见公式：
# first_layer_neurons = 2 * input_features  # 输入特征数量的2倍
# 或
# first_layer_neurons = input_features * 2/3  # 输入特征数量的2/3
#金字塔原则
# 逐层递减，常见比例：
# 第一层：64 (或其他2的幂次)
# 第二层：32 (上一层的1/2)
# 最后层：num_classes (分类数量)
def create_model(input_shape,num_classes):
    model = tf.keras.Sequential([
        tf.keras.layers.Dense(64,activation='relu',input_shape=input_shape),
        tf.keras.layers.Dense(32,activation='relu'),
        tf.keras.layers.Dropout(0.2),#防止过拟合
        tf.keras.layers.Dense(num_classes,activation='softmax')
    ])
    return model

def train_model(X_train,y_train):
    model=create_model(X_train.shape[1:],len(np.unique(y_train)))
    model.compile(
        optimizer='adam',#优化器
        loss='sparse_categorical_crossentropy',#损失函数
        metrics=['accuracy']#评估指标
        
    )
    #训练模型
    history=model.fit(
        X_train,y_train,
        epochs=200,
        batch_size=32,
        validation_split=0.2,
        verbose=1#显示训练过程
    )
    return model,history


#评估模型
def evaluate_model(model,X_test,y_test,history):
    #评估模型
    loss,accuracy=model.evaluate(X_test,y_test)
    print(f'测试损失：{loss:.4f}')
    print(f'测试准确率：{accuracy:.4f}')
    #绘制训练和验证的准确率曲线
    plt.figure(figsize=(12,4))#设置图像大小
    plt.plot(history.history['loss'],label='训练损失')
    plt.plot(history.history['val_loss'],label='验证损失')
    plt.title('训练和验证损失')
    plt.xlabel('Epoch')
    plt.ylabel('Loss')
    plt.legend()
    plt.show()

#保存并转换为keras模型
def convert_to_keras(model,model_path):
    model.save(model_path)
    
    print(f'模型已保存到{model_path}')
    print(f"模型大小：{os.path.getsize(model_path)} bytes")

if __name__ == '__main__':
    #1.生成模拟数据
    print("正在生成模拟数据...")    
    x,y=input_data()
    #2.数据预处理
    print("正在数据预处理...")
    x_train,x_test,y_train,y_test=preprocess_data(x,y)
    #3.创建模型
    print("正在创建模型...")
    model=create_model(x_train.shape[1:],len(np.unique(y)))
    #4.训练模型
    print("正在训练模型...")
    model,history=train_model(x_train,y_train)
    #5.评估模型
    print("正在评估模型...")
    evaluate_model(model,x_test,y_test,history)
    model_path='model.keras'
    #6.保存转换为keras模型
    print("正在保存转换为keras模型...")
    convert_to_keras(model,model_path)
    print(f'模型已保存到{model_path}')





