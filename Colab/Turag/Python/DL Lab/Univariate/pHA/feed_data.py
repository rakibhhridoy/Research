import pandas as pd
from load_data import load_file
from functions_learning import df_to_X_y
from sklearn.model_selection import train_test_split

WINDOW_SIZE = 3

fname = "/content/drive/MyDrive/Turag/Python/DL Lab/Univariate/phA/data/LocationA.csv"
def data_extract():
    locA = load_file(fname)
    locA = locA.set_index("Date")

    pHA = locA["pHA"]
    X1, y1 = df_to_X_y(pHA, WINDOW_SIZE)
    x_train, x_test, y_train, y_test = train_test_split(X1, y1, test_size=0.2, random_state=1)
    x_train, x_val, y_train, y_val = train_test_split(x_train, y_train, test_size=0.2, random_state=1)    
    return x_train, x_test, y_train, y_test, x_val, y_val

