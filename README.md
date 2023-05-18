# Crowdfunding_ETL

Project 2

CODE FOR ERD:

Contacts
-
contact_id PK int
first_name VARCHAR(255)
last_name VARCHAR(255)
email VARCHAR(255)

Category
-
category_id PK VARCHAR(10)
category VARCHAR(10)

Subcategory
-
subcategory_id PK VARCHAR(10)
subcategory VARCHAR(10)

Campaign
-
cf_id PK int
contact_id FK >- Contacts.contact_id
company_name VARCHAR(255)
description VARCHAR(255)
goal float
pledged float
outcome VARCHAR(10)
backers_count int
country VARCHAR(10)
currency VARCHAR(10)
launched_date date
end_date date
category_id FK >- Category.category_id
subcategory_id FK >- Subcategory.subcategory_id
