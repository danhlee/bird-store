CREATE USER 'customer'@'localhost' IDENTIFIED BY 'customer';
GRANT ALL PRIVILEGES ON *.* TO 'customer'@'localhost';

CREATE DATABASE IF NOT EXISTS `bird_store`;
USE `bird_store`;

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
	id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    product_name varchar(100) DEFAULT NULL,
    price decimal(7,2) DEFAULT NULL,
    quantity int(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1;

INSERT INTO product(product_name, price, quantity) VALUES 
	('Jacks All Purpose Seed Mix 10 lbs', 14.99, 20),
    ('Jacks Striped Sunflower Seed 5 lbs', 9.99, 35),
	('Perch N Go Bird Carrier', 69.99, 10),
	('Hampton Deluxe Divided Breeder Cage System', 150.00, 5),
    ('Airtight Three Piece Food Storage Combo', 24.99, 20),
    ('Kaytee Feeder Station', 4.50, 60),
    ('Jacks Sparrow Water Dish', 3.99, 80),
    ('Caitec Foraging Toy', 15.59, 25),
    ('Thistle Finch Screen Bird Feeder', 10.79, 20),
    ('Jacks Heavy Duty Perch Swing', 6.50, 25),
    ('Grapevine Bird Perch', 5.19, 20),
    ('A&E Edible Branch Perch', 4.80, 30),
    ('Paradise Cotton Zig Zag Perch', 13.89, 25),
    ('Insight Bird Perch Cleaner', 2.79, 50),
    ('Koko Corn Cruncher Bird Toy', 2.59, 35),
    ('Jacks Wood Bird Ladder', 3.19, 30),
    ('Paradise Interactive Foraging Sphere', 9.99, 25),
    ('Kwik Stop Stypic Powder', 3.59, 25),
    ('Kaytee Forti-Diet Pro Health Supplement', 4.27, 30),
    ('Vetericyn Animal Wound & Skin Care Hydrogel', 34.99, 20),
    ('8 in 1 Ultra Care Mite & Lice Bird Spray', 5.29, 25),
    ('Oasis Probiotic Bird Water Tablets', 4.99, 25),
    ('Jacks Bird Rock Chew', 6.59, 25),
    ('Jacks Bird Bath with Mirror', 2.09, 25),
    ('Bird Nail Clippers', 4.89, 20),
    ('Poop-Off Bird Poop Remover', 14.89, 20),
    ('So Fresh Habitat Cleaning Wiper', 3.49, 30),
    ('Jacks Habitat Cleaner Brush', 14.89, 20),
    ('Jacks 3 in 1 Odor Destroyer', 14.89, 20);
    
SELECT * FROM product ORDER BY product_name;
    
    
    
DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
	id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    email varchar(100) DEFAULT NULL,
    event_name varchar(100) DEFAULT NULL,
    registration_date timestamp
) ENGINE=InnoDB AUTO_INCREMENT=1;
   
    
INSERT INTO `event`(email, event_name) VALUES 
	('birdlover@gmail.com', 'Taking Flight: Bringing in the Bird Skills'),
    ('carlossantana@hotmail.com', 'Birds of Prey Series: Sparrows'),
	('homersimpson123@gmail.com', 'Sagawau Bird Hikes'),
    ('eagleman44@gmail.com', 'Sparrow Woods Bird Walk'),
    ('parrotgirl@gmail.com', 'Taking Flight: Bringing in the Bird Skills');
    
SELECT * FROM `event` ORDER BY event_name;


SELECT event_name, count(*) FROM `event` GROUP BY event_name;
    
    
    
    
    
    
    
    
    
    