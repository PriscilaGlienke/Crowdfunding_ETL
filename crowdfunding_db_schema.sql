CREATE TABLE contacts (
	contact_id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	email VARCHAR(255)
);

CREATE TABLE category (
	category_id VARCHAR(10) PRIMARY KEY NOT NULL,
	category VARCHAR(255)
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(10) PRIMARY KEY NOT NULL,
	subcategory VARCHAR(255)
);

CREATE TABLE campaign (
	cf_id INT PRIMARY KEY NOT NULL,
	contact_id INT REFERENCES contacts(contact_id) NOT NULL,
	company_name VARCHAR(255),
	description VARCHAR(255),
	goal FLOAT,
	pledge FLOAT,
	outcome VARCHAR(10),
	backers_count INT,
	country VARCHAR(10),
	currency VARCHAR(10),
	launched_date DATE,
	end_date DATE,
	category_id VARCHAR(10) REFERENCES category(category_id) NOT NULL,
	subcategory_id VARCHAR(10) REFERENCES subcategory(subcategory_id) NOT NULL
);