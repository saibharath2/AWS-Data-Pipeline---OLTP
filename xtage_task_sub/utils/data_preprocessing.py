from sqlalchemy import create_engine, text
import pandas as pd
import numpy as np

def fill_missing_values(df, column_defaults):
    """
    Fill missing values in the DataFrame based on column_defaults dictionary.
    """
    for column, default_value in column_defaults.items():
        df[column] = df[column].fillna(default_value)
    return df

def handle_abnormal_values(df, rules):
    """
    Handle abnormal values based on the rules provided in the rules dictionary.
    """
    for column, rule in rules.items():
        if rule['type'] == 'minrange_include':
            min_val, max_val = rule['range']
            df[column] = df[column].apply(lambda x: np.nan if x <= min_val or x > max_val else x)
        elif rule['type'] == 'range_exclude':
            min_val, max_val = rule['range']
            df[column] = df[column].apply(lambda x: np.nan if x < min_val or x > max_val else x)
        elif rule['type'] == 'recalculate':
            df[column] = df.apply(rule['function'], axis=1)
    return df

def handle_duplicates(df, subset=None):
    """
    Remove duplicate records based on the subset of columns provided.
    """
    return df.drop_duplicates(subset=subset)

def transform_categorical(df, categorical_columns):
    """
    Transform categorical columns into numerical format or one-hot encoding.
    """
    for column in categorical_columns:
        df[column] = df[column].astype('category').cat.codes
    return df

def normalize_data(df, columns):
    """
    Normalize specified numerical columns.
    """
    for column in columns:
        max_val = df[column].max()
        min_val = df[column].min()
        df[column] = (df[column] - min_val) / (max_val - min_val)
    return df
