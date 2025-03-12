import numpy as np
import tensorflow as tf 
import matplotlib.pyplot as plt
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler

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

model















