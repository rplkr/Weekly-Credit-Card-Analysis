-- SQL Query to create and import data from csv files:

-- 0. Create and use database 
CREATE DATABASE ccdb;
USE ccdb;

-- 1. Create cc_detail table

CREATE TABLE cc_detail (
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);


-- 2. Create cc_detail table

CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);


-- 3. Copy csv data into SQL 

-- Insert data from credit_card.csv into cc_detail table using Import wizard
select * from cc_detail;

-- Insert data from customer.csv into cust_detail table using Import wizard
select * from cust_detail;

-- 4. Connect your SQL database wtih Power BI and start making your dashboard

-- 5. After making dashboard Copy additional csv data into SQL to show automatic changes in Power BI

-- Insert data from cc_add.csv into cc_detail table using Import wizard
select * from cc_detail;

-- Insert data from cust_add.csv into cust_detail table using Import wizard
select * from cust_detail;


