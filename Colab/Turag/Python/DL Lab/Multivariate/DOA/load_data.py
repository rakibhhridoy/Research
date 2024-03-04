import pandas as pd

def load_file(file):
    df = pd.read_csv(file, index_col = False)
    return df 
