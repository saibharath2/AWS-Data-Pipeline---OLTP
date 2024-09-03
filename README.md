# AWS-Data-Pipeline---OLTP
This project involves building a data pipeline using AWS services. The pipeline processes and standardizes data from various sources, including PostgreSQL and APIs, and serves it through a RESTful API. The project utilized several datasets: the Customers Table provided customer information including age, gender, location, and joining dates; the Products Table detailed product specifics like pricing and stock availability; the Transactions Table recorded transaction details such as total amounts and dates; the Sales Data Table captured sales figures, including quantities and prices; and the Exchange Rates Table offered exchange rates for currency conversion. Each dataset played a crucial role in building and refining the data processing pipeline, supporting analysis and integration tasks.

![Architecture Diagram](https://github.com/saibharath2/AWS-Data-Pipeline---OLTP/blob/main/aws_arch.png)


## Project Overview
[AWS EC2](https://ap-south-1.console.aws.amazon.com/ec2/home)
 with Python : Used for Python development and building data pipelines. 

[AWS RDS](https://ap-south-1.console.aws.amazon.com/rds/home) with PostgreSQL: For data storage, modeling, and schema management.

[AWS Lambda](https://ap-south-1.console.aws.amazon.com/lambda/home): To deploy functions that retrieve data from AWS RDS.

[AWS API Gateway](https://ap-south-1.console.aws.amazon.com/apigateway/main/apis): To create a RESTful API integrated with Lambda for serving data.

Sample RESTful API by using products data - https://l6mihgafjg.execute-api.ap-south-1.amazonaws.com/test_xtage/prices/products

## Setup Instructions
### Prerequisites
Python 3.x
AWS CLI configured with appropriate credentials
PostgreSQL database instance on AWS RDS

### Installation
pip install -r requirements.txt

## Configuration
### Database Configuration
Ensure your AWS RDS PostgreSQL instance is set up and accessible. Update the database credentials in the file as follows:

DB_HOST = 'your-db-host'

DB_PORT = 'your-db-port'

DB_USER = 'your-db-username'

DB_PASSWORD = 'your-db-password'

### AWS Lambda and API Gateway
Set up AWS Lambda functions and API Gateway endpoints according to your project's needs. Ensure that the Lambda function has appropriate permissions to access the RDS instance.

## Code Files Breakdown
UTILS : data_ingestion.py and data_preprocessing.py

Code Run Flow : First data_standardization file will run it ingests data from various sources and perform data modelling then run data_processing which cleans and transforms data which can be utilized by cross-teams like data scientists,backend,senior management. for creating mock apis i used postman services (apikey based auth)

### [data_ingestion.py](https://github.com/saibharath2/AWS-Data-Pipeline---OLTP/blob/main/xtage_task_sub/utils/data_ingestion.py):

#### Functions:
Creates a PostgreSQL database and tables.
Inserts data from CSV files into tables.
Fetches data from APIs and PostgreSQL queries.
#### Strengths:
Modular design.
Handles various data ingestion scenarios.

### [data_preprocessing.py](https://github.com/saibharath2/AWS-Data-Pipeline---OLTP/blob/main/xtage_task_sub/utils/data_preprocessing.py):

#### Functions:
Fill missing values.
Handle abnormal values.
Remove duplicates.
Transform categorical data.
Normalize numerical data.
#### Strengths:
Modular and reusable functions.

### [data_standardization.ipynb](https://github.com/saibharath2/AWS-Data-Pipeline---OLTP/blob/main/xtage_task_sub/xtage_task/Data_Standardization.ipynb):

#### Processes:
Extracts zip files.
Creates new databases and tables.
Inserts raw data into PostgreSQL.
Standardizes data by handling missing values, date formats, and other preprocessing steps.
#### Strengths:
Comprehensive workflow from extraction to data insertion.

### [data_processing.ipynb](https://github.com/saibharath2/AWS-Data-Pipeline---OLTP/blob/main/xtage_task_sub/xtage_task/Data_Preprocessing.ipynb):

#### Processes:
Fetches data from the database.
Applies preprocessing functions like filling missing values and handling duplicates.
Recalculates fields and inserts cleaned data into a new database.
#### Strengths:
Well-structured preprocessing steps.

## Contributing
Feel free to submit issues and pull requests. For major changes, please open an issue first to discuss what you would like to change.

## Contact
For any questions or feedback, please contact Sai Bharath Akkala , varmabharath2@gmail.com
