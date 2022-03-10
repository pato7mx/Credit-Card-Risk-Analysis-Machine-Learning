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

A database with tables for use in the project was generated in AWS-RDS Server.

Database info:
- Name: dbproject
- Endpoint and port (link): dbproject.cprghtxfxmsc.us-east-1.rds.amazonaws.com

Password in ignored config.py


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

### Description of feature engineering and the feature selection, including the teams decision-making process

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
	
![image](https://user-images.githubusercontent.com/88845919/156944299-89a20c66-84b3-4c69-bd04-2e26b643e088.png)
	
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
	
Neural networks and deep learning models will often converge on a local minimum. In other words, these models will often focus on a specific trend in the data and could miss the "bigger picture."
	
Code can be find in the machine learning folder.
	
### Description of how model was trained (or retrained, if they are using an existing model)

The Model was trainned using keras, we used "sigmoid" activation function, with 2 hidden layers. And "sigmoid" activation function. This is because we want a value of 0 or 1.
	
		# Define the model - deep neural net, i.e., the number of input features and hidden nodes for each layer.
		number_input_features = len(X_train[0])
		hidden_nodes_layer1 = 50
		hidden_nodes_layer2 = 20

		nn = tf.keras.models.Sequential()

		# First hidden layer
		nn.add(
		    tf.keras.layers.Dense(units=hidden_nodes_layer1, input_dim=number_input_features, activation="sigmoid")
		)


		# Second hidden layer
		nn.add(tf.keras.layers.Dense(units=hidden_nodes_layer2, activation="sigmoid"))

		# Output layer
		nn.add(tf.keras.layers.Dense(units=1, activation="sigmoid"))

		# Check the structure of the model
		nn.summary()
			
![image](https://user-images.githubusercontent.com/88845919/156944369-95f4c2a0-ec84-4054-a4d0-fb527657f2c5.png)
			
### Description and explanation of model’s confusion matrix, including final accuracy score 

![image](https://user-images.githubusercontent.com/88845919/156946192-919cde21-9561-4a70-8a87-8f135f984b3a.png)
	
We can see in the image above, that the accuracy of the model is 95.87%. We need to be careful on overfitting the data.

About the confusion matrix, it let us know that the model has high sensitivity (0.98) and precision(0.977).
So, the model is sensitive enought to identify high risk applicants.

### Output of the model

For the input we use the applicant information, to get an output, credit card approval or not. We generate a CSV file with this results.
	
![image](https://user-images.githubusercontent.com/88845919/156944727-7b0cc537-f318-4381-b485-20f29cdce154.png)
	
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

## Dashboard
The dashboard can be found in [Tableu Public](https://public.tableau.com/views/CreditCardApprovalAnalysisv2/MachineLearningTest?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link)

The dashboard can be visualized better if using a desktop in fullscreen. 

We can see that more than 98% of the Credit requests were approved.

![image](https://user-images.githubusercontent.com/21972342/156973062-8a48395e-4172-49ba-b3e9-0573acd39c44.png)

From the applications, there is almost 25% more females requesting for credit than males. 

Additionally, widowed males have a high credit reject ratio (>20%). Widowed females have a 2.12% reject ratio. 

From the data, it seems that there is no disctinction for the number of children involved in the credit approval.

![image](https://user-images.githubusercontent.com/21972342/156973092-78f2339a-9548-4cf2-bf76-c0461c62bfd2.png)

Most of the users requesting credit are Laborers. 

The ones that have the highest risk of rejection are the users who studied up to lower secondary level.

![image](https://user-images.githubusercontent.com/21972342/156973161-92bde16f-a812-4fdc-9966-f32fcc0875a5.png)

Most of the users own a house or an apartment. Those who have a higher risk of rejection are those who live on a municipal apartment or in an office apartment. 

Also, it seems that is mandatory to own a mobile to request a credit, 100% of the applicants own one. 

![image](https://user-images.githubusercontent.com/21972342/156973191-b0dfec1c-7a39-43ea-9117-db97b10b21ee.png)

Analyzing the anual income, users with less than 40K anual income have a higher risk of getting rejected with a 4% credit reject ratio. 

Most of the users applying for a credit card (77.49%) have up to 10 years of employment.

The youngest applicant is 21 years old but the average age of applicants are 40 years old.

![image](https://user-images.githubusercontent.com/21972342/156973233-f43b8771-3458-45c7-837f-c4a573615ecb.png)

Those who had more than 2 months of payment delay in an existing credit have a 100% reject ratio. 

There is a low number of applicants without credit history.  

![image](https://user-images.githubusercontent.com/21972342/156973273-9a1ca1a4-9298-45b1-9267-c3e5f5b36811.png)

