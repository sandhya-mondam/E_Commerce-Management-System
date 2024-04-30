# E_Commerce-Management-System
Welcome to our E-commerce Management System repository! This comprehensive system streamlines online retail operations, enhancing user experience, optimizing sales, inventory management, and order processing. Built with scalability and efficiency in mind, it empowers businesses to thrive in the digital marketplace.
# E-Commerce Management System

## Table of Contents
1. [Features](#features)
2. [Database Schema](#database-schema)
3. [Installation](#installation)
4. [Usage](#usage)
5. [Contributing](#contributing)
6. [Licence](#licence)

## features
Features
- Store information about products, customers, orders, categories, payments, addresses, and reviews.
- Perform CRUD operations on data.
- Maintain relationships between tables to ensure data integrity.
- Default order date to the current date using timestamps.

## Database Schema
The database consists of the following tables:

1. products: Contains details of products such as name, description, price, quantity, and category.
2. customers: Stores information about customers including their name, email, address, and password.
3. orders: Holds data of orders made by customers including order date, status, total amount, and customer ID.
4. categories: Contains details of product categories such as name and description.
5. payments: Stores information about payments made for orders including amount, date, and payment method.
6. address: Holds the delivery addresses of customers.
7. reviews: Contains reviews submitted by customers for products including rating and comments.

## Installation
1. Clone the repository: `git clone <repository_url>`
2. Navigate to the project directory: `cd e-commerce-management-system`
3. Import the SQL file into your MySQL database management system.

## Usage
1. Access the database through your MySQL client.
2. Perform CRUD operations on the tables as needed.
3. Run SQL queries to retrieve, insert, update, and delete data.

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request with your changes.


