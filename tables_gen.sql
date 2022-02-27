-- CREATION OF DATABASE TABLES FOR AWS-RDS

-- Credit Card Aplications
CREATE TABLE credit_card_applications (
	id_no INT NOT NULL,
	code_gender VARCHAR(1) NOT NULL,
	flag_own_car VARCHAR(1) NOT NULL,
	flag_own_realty VARCHAR(1) NOT NULL,
	cnt_children VARCHAR,
	amt_income_total MONEY NOT NULL,
	education_type VARCHAR,
	family_status VARCHAR,
	housing_type VARCHAR,
	days_birth INT NOT NULL,
	days_employed INT NOT NULL,
	flag_mobil BOOLEAN,
	flag_work_phone BOOLEAN,
	flag_phone BOOLEAN,
	flag_email BOOLEAN,
	job VARCHAR,
	begin_months INT NOT NULL,
	status VARCHAR(1)
);

-- Credit Applications Results Table
CREATE TABLE credit_applications_results (
	id_no INT NOT NULL,
	begin_months INT NOT NULL,
	target INT NOT NULL
);

-- DISPLAY EMPTY TABLES
SELECT * FROM credit_card_applications;
SELECT * FROM credit_applications_results;

-- JOIN ON ID WHERE TARGET = 1
SELECT cca.id_no,
	cca.code_gender,
	cca.flag_own_car,
	cca.flag_own_realty,
	cca.cnt_children,
	cca.amt_income_total,
	cca.education_type,
	cca.family_status,
	cca.housing_type,
	cca.days_birth,
	cca.days_employed,
	cca.flag_mobil,
	cca.flag_work_phone,
	cca.flag_phone,
	cca.flag_email,
	cca.job,
	cca.begin_months,
	cca.status,
	car.target
	INTO credit_join
	FROM credit_card_applications as cca
	LEFT JOIN credit_applications_results as car
	ON cca.id_no = car.id_no
	WHERE car.target = 1;

SELECT * FROM credit_join;