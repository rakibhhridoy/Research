#!/usr/bin/python3
from cnn import 
import mavg_cnn import m_cnn_run

class DLForecaster:
    def __init__(self, file):
        self._fname = file
        self._window_size = 5
    
    def load_file(self):
        df = pd.read_csv(self._fname, index_col = False)
        return df 
        
    def df_to_X_y(self):
        df_as_np = df.to_numpy()
        X = []
        y = []
        for i in range(len(df_as_np)- self._window_size):
        row = [[a] for a in df_as_np[i:i+ self._window_size]]
        X.append(row)
        label = df_as_np[i+ self._window_size]
        y.append(label)
        return np.array(X), np.array(y)

    def data_extract(self):
        locA = load_file(fname)
        locA = locA.set_index("Date")

        doA = locA["DOA"]
        WINDOW_SIZE = 3
        X1, y1 = df_to_X_y(doA, WINDOW_SIZE)
        x_train, x_test, y_train, y_test = train_test_split(X1, y1, test_size=0.2, random_state=1)
        x_train, x_val, y_train, y_val = train_test_split(x_train, y_train, test_size=0.2, random_state=1)
        
        return x_train, x_test, y_train, y_test, x_val, y_val

    def moving_average(self, inputs):
        m_cnn_run()
    def fit(self, X_train, y_train, epochs, batch_size):
        # Implement training loop here

    def evaluate(self, X_test, y_test):
        # Calculate evaluation metrics here