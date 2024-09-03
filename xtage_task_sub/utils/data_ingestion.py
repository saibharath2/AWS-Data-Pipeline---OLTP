from sqlalchemy import create_engine, text
from sqlalchemy.exc import SQLAlchemyError
import pandas as pd
import requests
import psycopg2

class DataIngestion:
    def __init__(self, db_credentials):
        """
        Initialize the DataIngestion class with PostgreSQL credentials and optional API headers.
        
        Args:
            db_credentials (dict): Dictionary containing PostgreSQL connection details.
            api_headers (dict): Optional dictionary containing headers for API authentication.
        """
        self.db_credentials = db_credentials
        self.engine = self._create_db_engine()

    def _create_db_engine(self):
        """
        Create a SQLAlchemy engine for connecting to PostgreSQL.
        
        Returns:
            SQLAlchemy engine object.
        """
        try:
            engine = create_engine(
                f"postgresql://{self.db_credentials['user']}:{self.db_credentials['password']}@"
                f"{self.db_credentials['host']}:{self.db_credentials['port']}/{self.db_credentials['database']}"
            )
            print("Database engine created successfully")
            return engine
        except SQLAlchemyError as e:
            print(f"Error creating database engine: {e}")
            return None

    def create_database(self, new_db_name):
        """
        Create a new PostgreSQL database using psycopg2.
        
        Args:
            new_db_name (str): Name of the new database to be created.
        """
        try:
            # Connect to PostgreSQL without specifying a database
            conn = psycopg2.connect(
                host=self.db_credentials['host'],
                user=self.db_credentials['user'],
                password=self.db_credentials['password'],
                port=self.db_credentials['port']
            )
            conn.autocommit = True

            with conn.cursor() as cursor:
                cursor.execute(f"CREATE DATABASE {new_db_name}")
                print(f"Database '{new_db_name}' created successfully.")
            
            conn.close()
        except psycopg2.Error as e:
            print(f"Error creating database '{new_db_name}': {e}")

    def db_commands_execute(self, query):
        """
        Execute a SQL query that does not return results (e.g.,CREATE, DROP, INSERT, UPDATE).

        Args:
            query (str): SQL query to be executed.
        """
        try:
            conn = psycopg2.connect(
                host=self.db_credentials['host'],
                user=self.db_credentials['user'],
                password=self.db_credentials['password'],
                port=self.db_credentials['port'],
                dbname=db_name
            )
            conn.autocommit = True

            with conn.cursor() as cursor:
                cursor.execute(query)
                print("Query executed successfully.")

            conn.close()
        except psycopg2.Error as e:
            print("Error executing query")


    def insert_data_from_csv(self, file_path, table_name):
        """
        Insert data from a CSV file into a specified PostgreSQL table.
        
        Args:
            file_path (str): Path to the CSV file.
            table_name (str): Name of the table to insert data into.
        """
        try:
            df = pd.read_csv(file_path)
            df.columns = [c.lower() for c in df.columns]
            with self.engine.connect() as conn:
                df.to_sql(table_name, con=conn, if_exists='append', index=False)
            print(f"Data from {file_path} inserted into {table_name} successfully")
        except FileNotFoundError as e:
            print(f"CSV file not found: {e}")
        except SQLAlchemyError as e:
            print(f"Error inserting data into table {table_name}: {e}")
    
    def insert_data_from_df(self, df, table_name):
        """
        Insert data from a dataframe into a specified PostgreSQL table.

        Args:
            df (pd.DataFrame): DataFrame containing the data to insert.
            table_name (str): Name of the table to insert data into.
        """
        if df.empty:
            print(f"DataFrame is empty. No data to insert into {table_name}.")
            return

        # Ensure the DataFrame is in the correct format before inserting
        try:
            # Drop duplicate rows to prevent duplicate entries
            df = df.drop_duplicates()
            # Convert column names to lower case to standardize naming convention
            df.columns = [col.lower() for col in df.columns]

            with self.engine.connect() as conn:
                # Insert data into the table
                df.to_sql(table_name, con=conn, if_exists='append', index=False)
                print(f"Data from DataFrame inserted into {table_name} successfully.")

        except ValueError as e:
            # Handle DataFrame-related errors
            print(f"Error with DataFrame data or structure: {e}")

        except SQLAlchemyError as e:
            # Handle database-related errors
            print(f"Error inserting data into table {table_name}: {e}")

        except Exception as e:
            # Catch any other exceptions
            print(f"An unexpected error occurred: {e}")
            
    def execute_query(self, query):
        """
        Execute a SQL query that does not return results (e.g.,CREATE, DROP, INSERT, UPDATE).

        Args:
            query (str): SQL query to be executed.
        """
        try:
            with self.engine.connect() as conn:
                conn.execute(query)
            print("Query executed successfully.")
        except SQLAlchemyError as e:
            print(f"Error executing query: {e}")


    def fetch_query_results(self, query):
        """
        Execute a SQL query and return the result as a pandas DataFrame.

        Args:
            query (str): SQL query to be executed.

        Returns:
            pandas.DataFrame: Query results.
        """
        try:
            with self.engine.connect() as conn:
                result = pd.read_sql(query, conn)
            return result
        except SQLAlchemyError as e:
            print(f"Error executing query: {e}")
            return None


    def fetch_data_from_api(self, url,api_headers):
        """
        Fetch data from an API endpoint.
        
        Args:
            url (str): API endpoint URL.
        
        Returns:
            Data in JSON format if the request is successful, otherwise None.
        """
        try:
            response = requests.get(url, headers=api_headers)
            response.raise_for_status()  # Raises an HTTPError for bad responses
            print(f"Data fetched from API {url} successfully")
            return response.json()
        except requests.exceptions.HTTPError as e:
            print(f"HTTP error occurred while fetching data from API: {e}")
        except requests.exceptions.RequestException as e:
            print(f"Error occurred while fetching data from API: {e}")
        return None

    def read_csv(self, file_path):
        """
        Read a CSV file into a pandas DataFrame.
        
        Args:
            file_path (str): Path to the CSV file.
        
        Returns:
            pandas DataFrame containing the CSV data.
        """
        try:
            df = pd.read_csv(file_path)
            print(f"CSV data from {file_path} read successfully")
            return df
        except FileNotFoundError as e:
            print(f"CSV file not found: {e}")
        except pd.errors.ParserError as e:
            print(f"Error parsing CSV file {file_path}: {e}")
        return None
