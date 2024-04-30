/*
1.Identify Entities: Determine the main entities in your e-commerce system. These typically include: Products,Customers,Orders,Categories,Payments,Addresses,Reviews

2. Design Tables: For each entity, create a table with appropriate fields. 
For example:
Products Table: ID, Name, Description, Price, Quantity, CategoryID (foreign key)
Customers Table: ID, Name, Email, Address, Password
Orders Table: ID, CustomerID (foreign key), OrderDate, Status, TotalAmount
Categories Table: ID, Name, Description
Payments Table: ID, OrderID (foreign key), Amount, PaymentDate, PaymentMethod
Addresses Table: ID, CustomerID (foreign key), AddressLine1, AddressLine2, City, Country
Reviews Table: ID, ProductID (foreign key), CustomerID (foreign key), Rating, Comment */

#creation of products table
create table products(p_id int primary key, p_name varchar(100) not null,p_description varchar(255) , p_price int not null , p_Quantity int , p_categoryID int, foreign key(p_categoryId) references categories(c_categoryId));

#creating customers Table
create table customers(cs_id int primary key, cs_name varchar(100) not null, cs_email varchar(100), cs_address varchar(255), cs_password varchar(255));

#creating Orders Table:
create table orders(o_id int primary key, customerId int, o_orderdate date, o_status varchar(100), o_totalamount int, foreign key(customerId) references customers(cs_id));

#Creating Categories Table:
create table categories(c_categoryId int primary key, c_name varchar(255), c_Description varchar(255));

#Creating Payments Table:
create table payments(p_id int primary key, p_orderId int, p_amount int, p_date date, p_method varchar(100), foreign key(p_orderId) references orders(o_id));

#Creating Address table:
create table address(a_id int primary key, customerId int, a_address varchar(255), a_city varchar(100), a_country varchar(100), foreign key(customerId) references customers(cs_id));

#Create review table
create table review(r_id int primary key, product_id int, customer_id int, rating int, comment varchar(255), foreign key(product_id) references products(p_id), foreign key(customer_id) references customers(cs_id));

#INSERTING VALUES INTO TABLES

INSERT INTO categories (c_categoryId, c_name, c_Description) VALUES
(1, 'Electronics', 'Devices powered by electricity'),
(2, 'Clothing', 'Items worn on the body'),
(3, 'Home & Garden', 'Products for indoor and outdoor living spaces'),
(4, 'Sports & Outdoors', 'Equipment and gear for physical activities'),
(5, 'Health & Fitness', 'Items for maintaining physical well-being'),
(6, 'Gaming', 'Products related to video and tabletop gaming'),
(7, 'Appliances', 'Household machines used for everyday tasks'),
(8, 'Furniture', 'Functional items for sitting, sleeping, and storage'),
(9, 'Personal Care', 'Products for grooming and hygiene'),
(10, 'Office Supplies', 'Items for use in the workplace or home office');


INSERT INTO customers (cs_id, cs_name, cs_email, cs_address, cs_password) VALUES
(1, 'John Doe', 'john@example.com', '123 Main St', 'password1'),
(2, 'Alice Smith', 'alice@example.com', '456 Elm St', 'password2'),
(3, 'Bob Johnson', 'bob@example.com', '789 Oak St', 'password3'),
(4, 'Emma Brown', 'emma@example.com', '321 Maple St', 'password4'),
(5, 'Michael Wilson', 'michael@example.com', '654 Pine St', 'password5');

INSERT INTO orders (o_id, customerId, o_orderdate, o_status, o_totalamount) VALUES
(1, 1, '2024-04-01', 'Shipped', 199),
(2, 2, '2024-04-02', 'Processing', 299),
(3, 3, '2024-04-03', 'Delivered', 399),
(4, 4, '2024-04-04', 'Pending', 499),
(5, 5, '2024-04-05', 'Shipped', 599);

INSERT INTO payments (p_id, p_orderId, p_amount, p_date, p_method) VALUES
(1, 1, 199, '2024-04-01', 'Credit Card'),
(2, 2, 299, '2024-04-02', 'PayPal'),
(3, 3, 399, '2024-04-03', 'Credit Card'),
(4, 4, 499, '2024-04-04', 'Debit Card'),
(5, 5, 599, '2024-04-05', 'Credit Card');

INSERT INTO address (a_id, customerId, a_address, a_city, a_country) VALUES
(1, 1, '123 Main St', 'New York', 'USA'),
(2, 2, '456 Elm St', 'Los Angeles', 'USA'),
(3, 3, '789 Oak St', 'Chicago', 'USA'),
(4, 4, '321 Maple St', 'Houston', 'USA'),
(5, 5, '654 Pine St', 'Phoenix', 'USA');


INSERT INTO products (p_id, p_name, p_description, p_price, p_Quantity, p_categoryID) VALUES
(1, 'Smartphone', 'High-end smartphone with 6.5" display', 899, 50, 1),
(2, 'Laptop', 'Thin and light laptop with SSD storage', 1299, 30, 1),
(3, 'Smartwatch', 'Fitness tracker with heart rate monitor', 199, 100, 1),
(4, 'Headphones', 'Wireless noise-cancelling headphones', 299, 40, 2),
(5, 'Camera', 'Mirrorless camera with 4K video recording', 1499, 20, 2),
(6, 'Tablet', '10" tablet with long battery life', 499, 80, 1),
(7, 'Fitness Tracker', 'Activity tracker with GPS', 129, 150, 5),
(8, 'Gaming Console', 'Next-gen gaming console with 4K gaming', 499, 60, 6),
(9, 'Wireless Speaker', 'Portable Bluetooth speaker', 79, 90, 7),
(10, 'Wireless Router', 'High-speed dual-band router', 99, 70, 8),
(11, 'Desk Chair', 'Ergonomic office chair with lumbar support', 249, 40, 9),
(12, 'Electric Toothbrush', 'Sonic toothbrush with multiple modes', 79, 110, 10),
(13, 'Coffee Machine', 'Automatic espresso machine with milk frother', 399, 30, 3),
(14, 'Vacuum Cleaner', 'Robotic vacuum cleaner with smart navigation', 349, 50, 4),
(15, 'Smart Thermostat', 'Wi-Fi enabled thermostat with energy-saving features', 199, 60, 3),
(16, 'Security Camera', 'Outdoor security camera with night vision', 129, 80, 4),
(17, 'Wireless Mouse', 'Ergonomic mouse with customizable buttons', 49, 120, 5),
(18, 'Portable Charger', 'Slim power bank with fast charging', 29, 200, 6),
(19, 'Wireless Earbuds', 'True wireless earbuds with noise cancellation', 179, 90, 7),
(20, 'Yoga Mat', 'Eco-friendly yoga mat with non-slip surface', 39, 150, 8),
(21, 'Gaming Mouse', 'High-precision gaming mouse with RGB lighting', 79, 70, 9),
(22, 'Electric Shaver', 'Wet and dry electric shaver with trimmer', 129, 50, 10),
(23, 'Portable Projector', 'Mini projector with built-in speakers', 199, 30, 2),
(24, 'Wireless Keyboard', 'Slim wireless keyboard with full-size layout', 69, 80, 9),
(25, 'External Hard Drive', 'Portable HDD with USB 3.0 connectivity', 99, 100, 6),
(26, 'Bluetooth Earphones', 'Sports earphones with sweat resistance', 49, 120, 7),
(27, 'Air Purifier', 'HEPA air purifier with remote control', 199, 40, 5),
(28, 'Electric Kettle', 'Stainless steel electric kettle with temperature control', 59, 60, 3),
(29, 'Travel Backpack', 'Water-resistant backpack for outdoor adventures', 89, 80, 8),
(30, 'Wireless Charging Pad', 'Qi-compatible charging pad for smartphones', 29, 150, 1);



INSERT INTO review (r_id, product_id, customer_id, rating, comment) VALUES
(1, 1, 1, 5, 'Great smartphone, highly recommended!'),
(2, 2, 2, 4, 'Excellent laptop, very fast and lightweight.'),
(3, 3, 3, 4, 'Nice smartwatch, accurate heart rate monitoring.'),
(4, 4, 4, 3, 'Good headphones, but could have better noise cancellation.'),
(5, 5, 5, 5, 'Fantastic camera, amazing picture quality!'),
(6, 6, 1, 4, 'Very satisfied with this tablet, long battery life.'),
(7, 7, 2, 5, 'Awesome fitness tracker, GPS works flawlessly.'),
(8, 8, 3, 3, 'Decent gaming console, but lacks exclusive titles.'),
(9, 9, 4, 4, 'Great wireless speaker, good sound quality.'),
(10, 10, 5, 5, 'Excellent wireless router, fast and reliable connection.'),
(11, 11, 1, 4, 'Comfortable desk chair, good lumbar support.'),
(12, 12, 2, 5, 'Love this electric toothbrush, leaves my teeth feeling clean.'),
(13, 13, 3, 3, 'Coffee machine works well, but a bit noisy.'),
(14, 14, 4, 4, 'Efficient vacuum cleaner, cleans thoroughly.'),
(15, 15, 5, 5, 'Smart thermostat helps save energy, easy to use.'),
(16, 16, 1, 4, 'Security camera works as expected, good night vision.'),
(17, 17, 2, 5, 'Wireless mouse is comfortable to use, responsive.'),
(18, 18, 3, 3, 'Portable charger is handy, but could have more capacity.'),
(19, 19, 4, 4, 'Wireless earbuds have great sound quality, comfortable fit.'),
(20, 20, 5, 5, 'High-quality yoga mat, non-slip surface is great.'),
(21, 21, 1, 4, 'Gaming mouse has precise tracking, nice RGB lighting effects.'),
(22, 22, 2, 5, 'Electric shaver provides a close shave, waterproof design is convenient.'),
(23, 23, 3, 3, 'Portable projector is compact, good for presentations.'),
(24, 24, 4, 4, 'Wireless keyboard works well, keys are responsive.'),
(25, 25, 5, 5, 'External hard drive has ample storage, fast transfer speeds.'),
(26, 26, 1, 4, 'Bluetooth earphones are comfortable to wear, good battery life.'),
(27, 27, 2, 5, 'Air purifier works effectively, noticeable improvement in air quality.'),
(28, 28, 3, 3, 'Electric kettle heats water quickly, temperature control is useful.'),
(29, 29, 4, 4, 'Travel backpack is durable, plenty of compartments for storage.'),
(30, 30, 5, 5, 'Wireless charging pad is convenient, charges quickly.');


INSERT INTO customers (cs_id, cs_name, cs_email, cs_address, cs_password) VALUES
(6, 'Emily Johnson', 'emily@example.com', '987 Oak St', 'password6'),
(7, 'Michael Brown', 'michael@example.com', '654 Cedar St', 'password7'),
(8, 'Jessica Davis', 'jessica@example.com', '321 Birch St', 'password8'),
(9, 'Daniel Wilson', 'daniel@example.com', '789 Pine St', 'password9'),
(10, 'Sophia Martinez', 'sophia@example.com', '123 Maple St', 'password10'),
(11, 'Ethan Anderson', 'ethan@example.com', '456 Elm St', 'password11'),
(12, 'Isabella Taylor', 'isabella@example.com', '789 Oak St', 'password12'),
(13, 'Alexander Thomas', 'alexander@example.com', '321 Pine St', 'password13'),
(14, 'Olivia Hernandez', 'olivia@example.com', '654 Cedar St', 'password14'),
(15, 'William Mitchell', 'william@example.com', '987 Birch St', 'password15'),
(16, 'Amelia Young', 'amelia@example.com', '123 Elm St', 'password16'),
(17, 'James White', 'james@example.com', '456 Oak St', 'password17'),
(18, 'Sophia Rodriguez', 'sophia@example.com', '789 Cedar St', 'password18'),
(19, 'Benjamin Garcia', 'benjamin@example.com', '321 Birch St', 'password19'),
(20, 'Mia Lopez', 'mia@example.com', '654 Maple St', 'password20'),
(21, 'Elijah Perez', 'elijah@example.com', '987 Pine St', 'password21'),
(22, 'Charlotte Sanchez', 'charlotte@example.com', '123 Cedar St', 'password22'),
(23, 'Daniel Scott', 'daniel@example.com', '456 Birch St', 'password23'),
(24, 'Scarlett Hill', 'scarlett@example.com', '789 Maple St', 'password24'),
(25, 'Carter Gonzalez', 'carter@example.com', '321 Elm St', 'password25'),
(26, 'Madison Rivera', 'madison@example.com', '654 Oak St', 'password26'),
(27, 'Sebastian King', 'sebastian@example.com', '987 Cedar St', 'password27'),
(28, 'Avery Cooper', 'avery@example.com', '123 Birch St', 'password28'),
(29, 'Aria Ross', 'aria@example.com', '456 Maple St', 'password29'),
(30, 'Grayson Ward', 'grayson@example.com', '789 Elm St', 'password30');


INSERT INTO orders (o_id, customerId, o_orderdate, o_status, o_totalamount) VALUES
(6, 6, '2024-04-06', 'Delivered', 599),
(7, 7, '2024-04-07', 'Shipped', 699),
(8, 8, '2024-04-08', 'Processing', 799),
(9, 9, '2024-04-09', 'Pending', 899),
(10, 10, '2024-04-10', 'Delivered', 999),
(11, 11, '2024-04-11', 'Shipped', 1099),
(12, 12, '2024-04-12', 'Processing', 1199),
(13, 13, '2024-04-13', 'Pending', 1299),
(14, 14, '2024-04-14', 'Delivered', 1399),
(15, 15, '2024-04-15', 'Shipped', 1499),
(16, 16, '2024-04-16', 'Processing', 1599),
(17, 17, '2024-04-17', 'Pending', 1699),
(18, 18, '2024-04-18', 'Delivered', 1799),
(19, 19, '2024-04-19', 'Shipped', 1899),
(20, 20, '2024-04-20', 'Processing', 1999),
(21, 21, '2024-04-21', 'Pending', 2099),
(22, 22, '2024-04-22', 'Delivered', 2199),
(23, 23, '2024-04-23', 'Shipped', 2299),
(24, 24, '2024-04-24', 'Processing', 2399),
(25, 25, '2024-04-25', 'Pending', 2499),
(26, 26, '2024-04-26', 'Delivered', 2599),
(27, 27, '2024-04-27', 'Shipped', 2699),
(28, 28, '2024-04-28', 'Processing', 2799),
(29, 29, '2024-04-29', 'Pending', 2899),
(30, 30, '2024-04-30', 'Delivered', 2999);


INSERT INTO payments (p_id, p_orderId, p_amount, p_date, p_method) VALUES
(6, 6, 599, '2024-04-06', 'Credit Card'),
(7, 7, 699, '2024-04-07', 'PayPal'),
(8, 8, 799, '2024-04-08', 'Debit Card'),
(9, 9, 899, '2024-04-09', 'Bank Transfer'),
(10, 10, 999, '2024-04-10', 'Credit Card'),
(11, 11, 1099, '2024-04-11', 'PayPal'),
(12, 12, 1199, '2024-04-12', 'Debit Card'),
(13, 13, 1299, '2024-04-13', 'Bank Transfer'),
(14, 14, 1399, '2024-04-14', 'Credit Card'),
(15, 15, 1499, '2024-04-15', 'PayPal'),
(16, 16, 1599, '2024-04-16', 'Debit Card'),
(17, 17, 1699, '2024-04-17', 'Bank Transfer'),
(18, 18, 1799, '2024-04-18', 'Credit Card'),
(19, 19, 1899, '2024-04-19', 'PayPal'),
(20, 20, 1999, '2024-04-20', 'Debit Card'),
(21, 21, 2099, '2024-04-21', 'Bank Transfer'),
(22, 22, 2199, '2024-04-22', 'Credit Card'),
(23, 23, 2299, '2024-04-23', 'PayPal'),
(24, 24, 2399, '2024-04-24', 'Debit Card'),
(25, 25, 2499, '2024-04-25', 'Bank Transfer'),
(26, 26, 2599, '2024-04-26', 'Credit Card'),
(27, 27, 2699, '2024-04-27', 'PayPal'),
(28, 28, 2799, '2024-04-28', 'Debit Card'),
(29, 29, 2899, '2024-04-29', 'Bank Transfer'),
(30, 30, 2999, '2024-04-30', 'Credit Card');

INSERT INTO review (r_id, product_id, customer_id, rating, comment) VALUES
(31, 1, 6, 4, 'The smartphone is good, but the battery could be better.'),
(32, 2, 7, 5, 'The laptop exceeded my expectations, very satisfied!'),
(33, 3, 8, 4, 'The smartwatch is stylish and functional.'),
(34, 4, 9, 3, 'The headphones are comfortable, but the sound quality could be improved.'),
(35, 5, 10, 5, 'The camera is a photographer''s dream, excellent quality!'),
(36, 6, 11, 4, 'The tablet is great for entertainment and productivity.'),
(37, 7, 12, 5, 'The fitness tracker helped me achieve my fitness goals, highly recommend!'),
(38, 8, 13, 3, 'The gaming console has good graphics, but the controller feels flimsy.'),
(39, 9, 14, 4, 'The wireless speaker is compact and has good sound quality.'),
(40, 10, 15, 5, 'The wireless router improved my internet speed and stability.'),
(41, 11, 16, 4, 'The desk chair is comfortable for long hours of work.'),
(42, 12, 17, 5, 'The electric toothbrush makes my teeth feel cleaner than ever!'),
(43, 13, 18, 3, 'The coffee machine makes great coffee, but it''s a bit noisy.'),
(44, 14, 19, 4, 'The vacuum cleaner does a thorough job of cleaning.'),
(45, 15, 20, 5, 'The smart thermostat saves energy and keeps my home comfortable.'),
(46, 16, 21, 4, 'The security camera provides peace of mind with its clear footage.'),
(47, 17, 22, 5, 'The wireless mouse is responsive and comfortable to use.'),
(48, 18, 23, 3, 'The portable charger is convenient for traveling, but it drains quickly.'),
(49, 19, 24, 4, 'The wireless earbuds have good sound quality and fit well.'),
(50, 20, 25, 5, 'The yoga mat is comfortable and has good grip.'),
(51, 21, 26, 4, 'The gaming mouse enhances my gaming experience.'),
(52, 22, 27, 5, 'The electric shaver provides a close shave without irritation.'),
(53, 23, 28, 3, 'The portable projector is handy for presentations, but the brightness could be better.'),
(54, 24, 29, 4, 'The wireless keyboard is responsive and comfortable to type on.'),
(55, 25, 30, 5, 'The external hard drive has plenty of storage space and is fast.'),
(56, 26, 6, 4, 'The Bluetooth earphones are lightweight and stay in place during workouts.'),
(57, 27, 7, 5, 'The air purifier has improved the air quality in my home.'),
(58, 28, 8, 3, 'The electric kettle heats water quickly, but the design is a bit bulky.'),
(59, 29, 9, 4, 'The travel backpack is sturdy and has plenty of compartments.'),
(60, 30, 10, 5, 'The wireless charging pad is convenient and charges my phone quickly.');

select * from review;
INSERT INTO categories (c_categoryId, c_name, c_Description) VALUES
(11, 'Kitchen Appliances', 'Appliances for the kitchen, including coffee machines, blenders, and electric kettles.'),
(12, 'Home Improvement', 'Products for home improvement tasks, including tools, lighting, and home security devices.'),
(13, 'Smart Home', 'Devices for creating a smart home environment, including thermostats, security cameras, and smart bulbs.'),
(14, 'Computer Accessories', 'Accessories for computers and laptops, including mice, keyboards, and external hard drives.'),
(15, 'Mobile Accessories', 'Accessories for mobile devices, including cases, screen protectors, and power banks.'),
(16, 'Audio', 'Audio equipment and accessories, including headphones, speakers, and earphones.'),
(17, 'Wearable Technology', 'Technology that can be worn on the body, including smartwatches, fitness trackers, and VR headsets.'),
(18, 'Sports & Outdoors', 'Products for sports and outdoor activities, including yoga mats, backpacks, and camping gear.'),
(19, 'Office Supplies', 'Supplies for office use, including stationery, organizers, and desk accessories.'),
(20, 'Health & Wellness', 'Products related to health and wellness, including vitamins, supplements, and health monitors.');

INSERT INTO categories (c_categoryId, c_name, c_Description) VALUES
(21, 'Smartwatches', 'Wearable devices with advanced features such as fitness tracking and notifications.'),
(22, 'Kitchen Gadgets', 'Innovative tools and gadgets for cooking and food preparation.'),
(23, 'Smart Home Security', 'Devices and systems for securing and monitoring homes remotely.'),
(24, 'Audio Systems', 'High-quality audio systems for home entertainment.'),
(25, 'Outdoor Gear', 'Equipment and accessories for outdoor adventures and activities.'),
(26, 'Home Decor', 'Items for decorating and furnishing homes, including art, rugs, and decor accessories.'),
(27, 'Travel Essentials', 'Essential items for travel, including luggage, travel adapters, and travel pillows.'),
(28, 'Baby & Kids', 'Products for infants, toddlers, and children, including toys, clothing, and baby care essentials.'),
(29, 'Pet Supplies', 'Supplies and accessories for pets, including food, toys, and grooming products.'),
(30, 'Books & Media', 'Books, movies, music, and other forms of media for entertainment and education.');

INSERT INTO address (a_id, customerId, a_address, a_city, a_country) VALUES
(31, 6, '456 Oak St', 'New York', 'USA'),
(32, 7, '789 Cedar St', 'Los Angeles', 'USA'),
(33, 8, '123 Birch St', 'Chicago', 'USA'),
(34, 9, '456 Maple St', 'Houston', 'USA'),
(35, 10, '789 Elm St', 'Phoenix', 'USA'),
(36, 11, '123 Oak St', 'Philadelphia', 'USA'),
(37, 12, '456 Cedar St', 'San Antonio', 'USA'),
(38, 13, '789 Birch St', 'San Diego', 'USA'),
(39, 14, '123 Maple St', 'Dallas', 'USA'),
(40, 15, '456 Elm St', 'San Jose', 'USA'),
(41, 16, '789 Oak St', 'Austin', 'USA'),
(42, 17, '123 Cedar St', 'Jacksonville', 'USA'),
(43, 18, '456 Birch St', 'Fort Worth', 'USA'),
(44, 19, '789 Maple St', 'Columbus', 'USA'),
(45, 20, '123 Elm St', 'Charlotte', 'USA'),
(46, 21, '456 Oak St', 'Indianapolis', 'USA'),
(47, 22, '789 Cedar St', 'Seattle', 'USA'),
(48, 23, '123 Birch St', 'Denver', 'USA'),
(49, 24, '456 Maple St', 'Washington', 'USA'),
(50, 25, '789 Elm St', 'Boston', 'USA');


#QUERIES
select * from payments;
select * from review;
select * from customers;
select * from categories;
select * from orders;
select * from address;
select * from products;

#Joining Tables with Common Data
select * from products as p inner join categories as c on p.p_categoryID = c.c_categoryID;
select * from customers as c inner join orders as o on o.customerId = c.cs_id inner join payments as p on o.o_id = p.p_orderID;

#Selecting order with second highest total That is already shipped
select * from orders where o_status = "shipped" order by o_totalamount desc limit 1 offset 1;

#lets perform update operations
update orders set o_status = "cancelled" where o_id = 1;

#Using Group by to Group the data by categories available
select c_name from categories group by c_name;

#Selecting order with second highest total
select * from orders where o_status = "shipped" order by o_totalamount desc limit 1 offset 1;

#selecting products by price range
SELECT * FROM products WHERE p_price BETWEEN 500 AND 2000;

#total delivered sales
SELECT SUM(o_totalamount) AS total_sales FROM orders where o_status = "Delivered";




