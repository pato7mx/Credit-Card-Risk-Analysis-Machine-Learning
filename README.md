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
 <img src="https://user-images.githubusercontent.com/21972342/153769706-a98d666f-3b62-407f-8685-d0c4a8df1d84.png"/>
</p?

- The Application table describes customer information.
- The HistoricCredit table describes the credit status of a customer for each month since he/she requested the credit.

## Machine Learning


The proposed Machine Learning model is: 
Unsuppervised - Clustering and the K-means Algorithm

Code can be find in the machine learning folder

The features to take into account are: 

OWN_CAR

OWN_REALTY	

AMT_INCOME_TOTAL	Annual income	

NAME_INCOME_TYPE	Income category	

NAME_FAMILY_STATUS	Marital status	

NAME_HOUSING_TYPE	Way of living	

DAYS_EMPLOYED	Start date of employment

FLAG_MOBIL	Is there a mobile phone	

FLAG_WORK_PHONE	Is there a work phone	

FLAG_PHONE	Is there a phone	

FLAG_EMAIL	Is there an email	

OCCUPATION_TYPE	Occupation

LOAN_MONTHS_BALANCE	Record of past month loans

Our label will be:

At leats 2 categories, "good" or "bad" candidate for the credit card. Using Kmeans we can differenciate the applications into one of this two groups. We will determine the natural means that the data set has to find a good relation.

## Database

A database with tables for use in the project was generated in AWS-RDS Server.

Database info:
- Name: dbproject
- Endpoint and port (link): dbproject.cprghtxfxmsc.us-east-1.rds.amazonaws.com

Password in ignored config.py

## Tools  
### Creating Database  
- PostgreSQL  
- Amazon Web Services (AWS)  
### Analyzing Data  
- Pandas  
### Machine Learning  
- Scikit-Learn  
- Tensorflow  
### Dashboard  
- Tableau  


## Presentation
The presentation that outlines the project in [Google slides](https://docs.google.com/presentation/d/1Z_A6kwwKbiF3FvnKe_KBhuP6LGJ8C_TPaqjhdFbzavE/edit?usp=sharing)
