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
Ernesto Mora
#### CIRCLE
Hector Reyes
#### X
Manuel Ruiz


## Database 
The entity relationship diagram of the dataset can be described as follows: 

<p align="center">
 <img src="https://user-images.githubusercontent.com/21972342/153769706-a98d666f-3b62-407f-8685-d0c4a8df1d84.png"/>
</p?

- The Application table describes customer information.
- The HistoricCredit table describes the credit status of a customer for each month since he/she requested the credit.

## Machine Learning

### Description of data preprocessing

For data preprocessing we identify that dataset has multiple applications of the same person. So the first thing to do was to select high risk applicants and low risk applicants.

First organize the main dataframe

![image](https://user-images.githubusercontent.com/88845919/156697042-8976c183-e5b3-4e26-884f-216e831cb4da.png)

Then identify the data type of the dataframe. Check the kind of information that we have and create the final dataframe for the machine learning model. For that we select all individual applications classifing if the person represent high risk or low risk.

![image](https://user-images.githubusercontent.com/88845919/156697195-31453df6-15b7-40ea-afe7-b748cf6c2535.png)

![image](https://user-images.githubusercontent.com/88845919/156697342-790d6f1d-b707-4701-aeab-4697d736d150.png)

![image](https://user-images.githubusercontent.com/88845919/156697409-d34baf25-11ed-4847-b3af-1d71d305746e.png)

![image](https://user-images.githubusercontent.com/88845919/156697513-fa9ddb82-2bc4-4b81-9c3c-18c1200cb001.png)

![image](https://user-images.githubusercontent.com/88845919/156697547-e1f6dcd2-ff19-41d3-8129-36be4b6f4039.png)

![image](https://user-images.githubusercontent.com/88845919/156697789-cea8b858-9f71-4f76-8d17-3da845e51c6e.png)

![image](https://user-images.githubusercontent.com/88845919/156697829-d13efc1b-fe13-4a4f-9824-90e38f2c3810.png)

### Description of feature engineering and the feature selection, including the team's decision-making process

The features to take into account are: 
	
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

For Feature selection
	
![image](https://user-images.githubusercontent.com/88845919/156698033-d130fb0b-0c6f-4b4a-ad75-e702cf5e116d.png)
	
### Description of how data was split into training and testing sets
	
The data was split using train_test_split function
	
		# Split our preprocessed data into our features and target arrays
		y = application_df["TARGET"].values
		X = application_df.drop(["TARGET"],1).values
		T = application_df.drop(["TARGET"],1)

		# Split the preprocessed data into a training and testing dataset
		X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=78)
	
### Explanation of model choice, including limitations and benefits.
	
The proposed Machine Learning model is: 
Suppervised - Neuronal Networks

We select this model because we have some target. Thats why we used suppervised machine learning. And beacuse we are classifing several features to get a binary result, we select Neuronal Networks.
	
Code can be find in the machine learning folder
	
### Description of how model was trained (or retrained, if they are using an existing model)

The Model was trainned using keras, we used "relu" activation function, with 2 hidden layers. And "sigmoid" activation function.
	
		# Define the model - deep neural net, i.e., the number of input features and hidden nodes for each layer.
		number_input_features = len(X_train[0])
		hidden_nodes_layer1 = 10
		hidden_nodes_layer2 = 5

		nn = tf.keras.models.Sequential()

		# First hidden layer
		nn.add(
		    tf.keras.layers.Dense(units=hidden_nodes_layer1, input_dim=number_input_features, activation="relu")
		)


		# Second hidden layer
		nn.add(tf.keras.layers.Dense(units=hidden_nodes_layer2, activation="relu"))

		# Output layer
		nn.add(tf.keras.layers.Dense(units=1, activation="sigmoid"))

		# Check the structure of the model
		nn.summary()	

![image](https://user-images.githubusercontent.com/88845919/156699167-72ed5e17-f135-4e44-9418-7c96c5daa6df.png)			
			
### Description and explanation of model’s confusion matrix, including final accuracy score 

![image](https://user-images.githubusercontent.com/88845919/156699238-0edc9ccf-8812-4e6d-9afa-83f1b7f40a08.png)

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

## Description of the communication protocols  
### Slack  
We have our own team channel in Slack, in there we mostly use it to send links, software or other relevant web tools to develop our project.  

### Whatsapp  
We have a Whatsapp group to have a more direct communication, at any time, not only when we are in a computer.  

### Zoom  
Excluding our time during class, we get into a Zoom call every Sunday to finish the last steps into our next delivery.  

## Dashboard
The dashboard can be found in [Tableu Public](https://public.tableau.com/views/CreditCardApprovalAnalysis/CreditCardApporval?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link)

The dashboard can be visualized better if using a desktop in fullscreen. 
