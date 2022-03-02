# Data-Analytics-Bootcamp-Final-Project

## First Segment

### Selected Topic
" Credit Card approval prediction"

### Reason why we selected the topic
The dataset we found is ideal to test the exact knowledge we acquired through the Bootcamp. Also using data to define if a client geta a credit card is a common practice in the financial industry today. This way we can test our knowledge in a realistic environment.


### Description of the source of the data
We got our data from a Data Science community website named Kaggle. Kaggle allows users to find and publish data sets, explore and build models in a web-based data-science environment, work with other data scientists and machine learning engineers, and enter competitions to solve data science challenges.

### Question we are going to answer with the data
Does the user will be able to get a credit card approval based on data?

### Definition of roles week one

#### SQUARE
Patricio Tamayo
#### TRIANGLE
Hector Ibarra

Ernesto Mora
#### CIRCLE
Hector Reyes
#### X
Manuel Ruiz
### Communication Protocols

## Database 
The entity relationship diagram of the dataset can be described as follows: 

<p align="center">
 <img src="![image](https://user-images.githubusercontent.com/88845919/156093526-ef5ccd64-ebf9-4bfa-8300-0b51c9e7680e.png)"/>
</p?

- The Application table describes customer information.
- The HistoricCredit table describes the credit status of a customer for each month since he/she requested the credit.

## Machine Learning


The proposed Machine Learning model is: 
Suppervised - Neuronal Networks

Code can be find in the machine learning folder

The features to take into account are: 

Feature Name	Description	Remarks
	
CODE_GENDER:	Gender	
FLAG_OWN_CAR:	The applicant has a car or not	
FLAG_OWN_REALTY:	The applicant has a property	
CNT_CHILDREN:	Number of Children	
AMT_INCOME_TOTAL:	Annual Income	
NAME_EDUCATION_TYPE:	Education Level	
NAME_FAMILY_STATUS:	Marital Status	
NAME_HOUSING_TYPE:	Way of Living	
DAYS_BIRTH:	Age in days	
DAYS_EMPLOYED:	Duration of work in days	
FLAG_MOBIL:	Is there a mobile phone	
FLAG_WORK_PHONE:	Is there a work phone	
FLAG_PHONE:	Is there a phone	
FLAG_EMAIL:	Is there an email	
JOB:	Job	
BEGIN_MONTHS: Record month	The month of the extracted data is the starting point, backwards, 0 is the current month, -1 is the previous month, and so on
STATUS	Status	0: 1-29 days past due 1: 30-59 days past due 2: 60-89 days overdue 3: 90-119 days overdue 4: 120-149 days overdue 5: Overdue or bad debts, write-offs for more than 150 days C: paid off that month X: No loan for the month
TARGET:	Target	Risk user are marked as '1', else are '0'

Our label will be:

At leats 2 categories, "good" or "bad" candidate for the credit card. Using Kmeans we can differenciate the applications into one of this two groups. We will determine the natural means that the data set has to find a good relation.

## Database

A database with tables for use in the project was generated in AWS-RDS Server.

Database info:
- Name: dbproject
- Endpoint and port (link): dbproject.cprghtxfxmsc.us-east-1.rds.amazonaws.com

Password in ignored config.py
