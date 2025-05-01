/* NB: I dati sono stati creati da ChatGpt al fine di avere un adeguato numero di record
 per creare un contesto quanto più articolato e verosimile. */

CREATE DATABASE ToysGroup;
USE ToysGroup;

CREATE TABLE Product (
    ProductKey INT PRIMARY KEY,
    ProductCategory VARCHAR(50) NOT NULL,
    ProductName VARCHAR(100) NOT NULL,
    StandardCost DECIMAL(10, 2),
    ListPrice DECIMAL(10, 2),
    Size VARCHAR(50)
);

CREATE TABLE Region (
    RegionKey INT PRIMARY KEY,
    RegionName VARCHAR(50) NOT NULL,
    City VARCHAR(100),
    PostalCode VARCHAR(20)
);

CREATE TABLE Sales (
    SalesOrderNumber INT,
    SalesOrderLineNumber INT,
    Sold BOOLEAN NOT NULL,
    SalesAmount DECIMAL(10, 2),
    OrderDate DATE NOT NULL,
    Year INT NOT NULL,
    ProductKey INT,
    UnitPrice DECIMAL(10, 2),
    TotalProductCost DECIMAL(10, 2),
    RegionKey INT,
    PRIMARY KEY (SalesOrderNumber, SalesOrderLineNumber),
    FOREIGN KEY (ProductKey) REFERENCES Product(ProductKey),
    FOREIGN KEY (RegionKey) REFERENCES Region(RegionKey)
);


INSERT INTO Product (ProductKey, ProductCategory, ProductName, StandardCost, ListPrice, Size) VALUES
(1, 'Books', 'Stuffed Animal', 32.27, 45.66, 'Large'),
(2, 'Music', 'Jigsaw Puzzle', 27.31, 67.96, 'Large'),
(3, 'Sports', 'Decorative Lamp', 39.97, 91.93, 'Large'),
(4, 'Toys', 'Notebook', 6.75, 96.18, 'Medium'),
(5, 'Books', 'Basketball', 8.99, 80.85, 'Medium'),
(6, 'Games', 'Toy Car', 9.54, 44.49, 'Large'),
(7, 'Electronics', 'Card Game', 16.3, 94.36, 'Medium'),
(8, 'Music', 'Action Figure', 47.45, 30.55, 'Medium'),
(9, 'Home Decor', 'Dollhouse', 24.31, 25.98, 'Medium'),
(10, 'Electronics', 'Sketchpad', 19.27, 12.52, 'Large'),
(11, 'Home Decor', 'Board Game', 21.5, 53.3, 'Medium'),
(12, 'Music', 'Notebook', 7.91, 33.98, 'Medium'),
(13, 'Games', 'Stuffed Animal', 21.62, 45.98, 'Medium'),
(14, 'Stationery', 'Card Game', 19.14, 15.06, 'Small'),
(15, 'Home Decor', 'RC Helicopter', 16.62, 16.67, 'Small'),
(16, 'Toys', 'Decorative Lamp', 29.96, 51.09, 'Medium'),
(17, 'Toys', 'Dollhouse', 7.6, 26.25, 'Small'),
(18, 'Puzzles', 'Rubik''s Cube', 40.68, 18.02, 'Small'),
(19, 'Books', 'Notebook', 33.69, 18.95, 'Large'),
(20, 'Games', 'Dollhouse', 34.58, 71.83, 'Small'),
(21, 'Sports', 'Stuffed Animal', 33.21, 86.16, 'Medium'),
(22, 'Toys', 'Dollhouse', 33.74, 17.84, 'Small'),
(23, 'Stationery', 'Action Figure', 35.89, 61.16, 'Medium'),
(24, 'Sports', 'Sketchpad', 24.87, 23.96, 'Large'),
(25, 'Sports', 'Headphones', 29.88, 63.29, 'Small'),
(26, 'Puzzles', 'Stuffed Animal', 26.75, 56.61, 'Medium'),
(27, 'Home Decor', 'Board Game', 41.14, 62.09, 'Large'),
(28, 'Clothing', 'Toy Car', 34.97, 53.1, 'Medium'),
(29, 'Clothing', 'Soccer Ball', 5.22, 74.99, 'Large'),
(30, 'Music', 'Jigsaw Puzzle', 19.59, 78.09, 'Small'),
(31, 'Electronics', 'Soccer Ball', 39.39, 49.5, 'Small'),
(32, 'Clothing', 'Headphones', 49.8, 66.9, 'Small'),
(33, 'Toys', 'Decorative Lamp', 25.14, 87.63, 'Small'),
(34, 'Puzzles', 'Stuffed Animal', 32.66, 15.24, 'Medium'),
(35, 'Puzzles', 'Action Figure', 26.9, 94.28, 'Medium'),
(36, 'Clothing', 'RC Helicopter', 27.62, 92.12, 'Large'),
(37, 'Puzzles', 'Board Game', 16.04, 51.66, 'Medium'),
(38, 'Clothing', 'Action Figure', 15.12, 54.26, 'Medium'),
(39, 'Clothing', 'Toy Car', 21.12, 31.86, 'Large'),
(40, 'Books', 'Soccer Ball', 24.76, 97.52, 'Large'),
(41, 'Music', 'Jigsaw Puzzle', 47.77, 54.69, 'Large'),
(42, 'Home Decor', 'Stuffed Animal', 47.64, 30.07, 'Large'),
(43, 'Electronics', 'Stuffed Animal', 17.15, 41.87, 'Medium'),
(44, 'Sports', 'Soccer Ball', 12.92, 25.97, 'Medium'),
(45, 'Music', 'Action Figure', 35.57, 77.96, 'Medium'),
(46, 'Music', 'Jigsaw Puzzle', 7.87, 13.95, 'Medium'),
(47, 'Games', 'Headphones', 10.52, 92.8, 'Large'),
(48, 'Stationery', 'Decorative Lamp', 15.02, 57.4, 'Large'),
(49, 'Music', 'RC Helicopter', 44.7, 40.63, 'Large'),
(50, 'Games', 'Stuffed Animal', 31.85, 58.97, 'Small'),
(51, 'Toys', 'Card Game', 43.36, 60.03, 'Small'),
(52, 'Books', 'Jigsaw Puzzle', 42.56, 78.74, 'Large'),
(53, 'Stationery', 'Decorative Lamp', 11.85, 72.44, 'Small'),
(54, 'Sports', 'Sketchpad', 18.15, 36.88, 'Large'),
(55, 'Games', 'Basketball', 9.58, 73.85, 'Large'),
(56, 'Home Decor', 'Soccer Ball', 38.76, 27.24, 'Large'),
(57, 'Toys', 'Toy Car', 29.28, 59.19, 'Small'),
(58, 'Puzzles', 'Dollhouse', 12.43, 64.94, 'Medium'),
(59, 'Music', 'Rubik''s Cube', 22.1, 12.38, 'Large'),
(60, 'Games', 'Toy Car', 31.8, 59.11, 'Medium'),
(61, 'Electronics', 'Card Game', 45.08, 51.27, 'Small'),
(62, 'Home Decor', 'Jigsaw Puzzle', 11.29, 84.04, 'Small'),
(63, 'Books', 'Action Figure', 44.12, 42.74, 'Medium'),
(64, 'Toys', 'Notebook', 31.64, 52.48, 'Medium'),
(65, 'Games', 'Stuffed Animal', 9.4, 63.79, 'Large'),
(66, 'Games', 'Basketball', 49.99, 19.04, 'Small'),
(67, 'Clothing', 'Toy Car', 19.84, 84.19, 'Medium'),
(68, 'Home Decor', 'Dollhouse', 45.2, 86.31, 'Large'),
(69, 'Games', 'Basketball', 40.3, 72.37, 'Small'),
(70, 'Games', 'Decorative Lamp', 30.61, 88.1, 'Small'),
(71, 'Electronics', 'Card Game', 9.55, 94.28, 'Small'),
(72, 'Music', 'RC Helicopter', 35.2, 62.27, 'Medium'),
(73, 'Clothing', 'Stuffed Animal', 24.05, 83.66, 'Large'),
(74, 'Music', 'RC Helicopter', 15.55, 26.66, 'Small'),
(75, 'Games', 'Headphones', 45.99, 98.76, 'Small'),
(76, 'Sports', 'Jigsaw Puzzle', 20.52, 98.72, 'Medium'),
(77, 'Music', 'Board Game', 17.61, 53.31, 'Small'),
(78, 'Clothing', 'RC Helicopter', 14.73, 40.22, 'Small'),
(79, 'Toys', 'Jigsaw Puzzle', 18.74, 17.46, 'Small'),
(80, 'Clothing', 'Action Figure', 26.7, 74.1, 'Medium'),
(81, 'Toys', 'Dollhouse', 42.01, 95.8, 'Small'),
(82, 'Electronics', 'Card Game', 38.03, 37.44, 'Small'),
(83, 'Music', 'Sketchpad', 29.06, 70.42, 'Medium'),
(84, 'Books', 'Basketball', 41.72, 91.89, 'Small'),
(85, 'Clothing', 'Board Game', 39.39, 36.3, 'Small'),
(86, 'Sports', 'Rubik''s Cube', 21.72, 93.19, 'Large'),
(87, 'Music', 'Jigsaw Puzzle', 15.84, 54.2, 'Large'),
(88, 'Puzzles', 'Stuffed Animal', 9.05, 72.95, 'Medium'),
(89, 'Books', 'RC Helicopter', 10.72, 44.59, 'Large'),
(90, 'Games', 'Rubik''s Cube', 31.99, 62.77, 'Small'),
(91, 'Sports', 'Basketball', 27.52, 82.59, 'Small'),
(92, 'Books', 'Stuffed Animal', 11.51, 96.01, 'Medium'),
(93, 'Clothing', 'Decorative Lamp', 45.68, 91.64, 'Large'),
(94, 'Sports', 'Soccer Ball', 23.39, 87.0, 'Medium'),
(95, 'Books', 'Stuffed Animal', 34.73, 64.79, 'Small'),
(96, 'Books', 'Stuffed Animal', 24.86, 60.94, 'Small'),
(97, 'Sports', 'Soccer Ball', 39.12, 80.6, 'Small'),
(98, 'Games', 'Stuffed Animal', 22.57, 43.31, 'Small'),
(99, 'Stationery', 'Sketchpad', 10.48, 90.74, 'Small'),
(100, 'Home Decor', 'Sketchpad', 34.88, 10.03, 'Small'),
(101, 'Sports', 'Basketball', 12.1, 75.71, 'Small'),
(102, 'Home Decor', 'Stuffed Animal', 20.6, 52.72, 'Medium'),
(103, 'Electronics', 'Sketchpad', 23.54, 88.93, 'Small'),
(104, 'Puzzles', 'Card Game', 6.81, 73.1, 'Small'),
(105, 'Sports', 'Action Figure', 44.13, 95.42, 'Medium'),
(106, 'Books', 'Basketball', 18.94, 77.55, 'Medium'),
(107, 'Stationery', 'Decorative Lamp', 22.38, 77.5, 'Large'),
(108, 'Puzzles', 'Headphones', 28.1, 31.54, 'Medium'),
(109, 'Puzzles', 'Action Figure', 42.25, 42.23, 'Medium'),
(110, 'Games', 'Action Figure', 39.22, 56.79, 'Small'),
(111, 'Puzzles', 'Decorative Lamp', 46.63, 77.2, 'Large'),
(112, 'Music', 'Action Figure', 15.19, 92.76, 'Medium'),
(113, 'Home Decor', 'Jigsaw Puzzle', 49.08, 14.99, 'Large'),
(114, 'Books', 'Board Game', 32.32, 82.46, 'Large'),
(115, 'Toys', 'Card Game', 37.36, 29.11, 'Medium'),
(116, 'Toys', 'Board Game', 5.07, 33.84, 'Small'),
(117, 'Puzzles', 'Sketchpad', 11.27, 33.73, 'Large'),
(118, 'Stationery', 'Stuffed Animal', 11.84, 84.11, 'Medium'),
(119, 'Electronics', 'RC Helicopter', 21.84, 35.83, 'Small'),
(120, 'Music', 'Notebook', 7.23, 76.79, 'Small');

INSERT INTO Region (RegionKey, RegionName, City, PostalCode) VALUES
(1, 'Alabama', 'Montgomery', '46863'),
(2, 'Alaska', 'Juneau', '10822'),
(3, 'Arizona', 'Phoenix', '38030'),
(4, 'Arkansas', 'Little Rock', '62194'),
(5, 'California', 'Sacramento', '36037'),
(6, 'Colorado', 'Denver', '94731'),
(7, 'Connecticut', 'Hartford', '26387'),
(8, 'Delaware', 'Dover', '39604'),
(9, 'Florida', 'Tallahassee', '29542'),
(10, 'Georgia', 'Atlanta', '83244'),
(11, 'Hawaii', 'Honolulu', '83796'),
(12, 'Idaho', 'Boise', '93148'),
(13, 'Illinois', 'Springfield', '70616'),
(14, 'Indiana', 'Indianapolis', '25318'),
(15, 'Iowa', 'Des Moines', '79152'),
(16, 'Kansas', 'Topeka', '61814'),
(17, 'Kentucky', 'Frankfort', '36490'),
(18, 'Louisiana', 'Baton Rouge', '95063'),
(19, 'Maine', 'Augusta', '12803'),
(20, 'Maryland', 'Annapolis', '35194'),
(21, 'Massachusetts', 'Boston', '32805'),
(22, 'Michigan', 'Lansing', '44143'),
(23, 'Minnesota', 'St. Paul', '20342'),
(24, 'Mississippi', 'Jackson', '38737'),
(25, 'Missouri', 'Jefferson City', '17215'),
(26, 'Montana', 'Helena', '99026'),
(27, 'Nebraska', 'Lincoln', '39894'),
(28, 'Nevada', 'Carson City', '39003'),
(29, 'New Hampshire', 'Concord', '23944'),
(30, 'New Jersey', 'Trenton', '24469'),
(31, 'New Mexico', 'Santa Fe', '91644'),
(32, 'New York', 'Albany', '80352'),
(33, 'North Carolina', 'Raleigh', '85443'),
(34, 'North Dakota', 'Bismarck', '81310'),
(35, 'Ohio', 'Columbus', '93600'),
(36, 'Oklahoma', 'Oklahoma City', '21510'),
(37, 'Oregon', 'Salem', '81352'),
(38, 'Pennsylvania', 'Harrisburg', '87784'),
(39, 'Rhode Island', 'Providence', '81745'),
(40, 'South Carolina', 'Columbia', '29009'),
(41, 'South Dakota', 'Pierre', '81045'),
(42, 'Tennessee', 'Nashville', '18877'),
(43, 'Texas', 'Austin', '51316'),
(44, 'Utah', 'Salt Lake City', '80667'),
(45, 'Vermont', 'Montpelier', '37045'),
(46, 'Virginia', 'Richmond', '19599'),
(47, 'Washington', 'Olympia', '60946'),
(48, 'West Virginia', 'Charleston', '15213'),
(49, 'Wisconsin', 'Madison', '19639'),
(50, 'Wyoming', 'Cheyenne', '70742');

INSERT INTO Sales (SalesOrderNumber, SalesOrderLineNumber, Sold, SalesAmount, OrderDate, Year, ProductKey, UnitPrice, TotalProductCost, RegionKey) VALUES
(1, 3, FALSE, 848.44, '2024-08-21', 2024, 50, 33.31, 383.87, 27),
(2, 2, FALSE, 604.07, '2024-10-30', 2024, 101, 38.54, 315.72, 24),
(3, 8, FALSE, 869.4, '2024-03-26', 2024, 59, 33.53, 58.35, 6),
(4, 2, FALSE, 591.28, '2024-10-21', 2024, 78, 5.53, 101.79, 30),
(5, 6, TRUE, 163.42, '2024-11-29', 2024, 8, 17.11, 315.98, 1),
(6, 8, FALSE, 849.4, '2024-02-26', 2024, 42, 6.77, 178.67, 15),
(7, 5, TRUE, 30.52, '2024-11-03', 2024, 69, 37.35, 422.48, 2),
(8, 4, TRUE, 917.5, '2024-02-25', 2024, 67, 11.54, 66.51, 15),
(9, 5, TRUE, 837.75, '2024-12-22', 2024, 5, 48.89, 274.4, 35),
(10, 8, FALSE, 531.36, '2024-03-22', 2024, 98, 31.33, 59.39, 3),
(11, 4, FALSE, 616.46, '2024-04-18', 2024, 112, 15.08, 51.92, 50),
(12, 4, TRUE, 214.89, '2024-04-10', 2024, 8, 49.14, 74.26, 2),
(13, 8, TRUE, 557.66, '2024-03-27', 2024, 16, 13.0, 268.82, 2),
(14, 3, TRUE, 618.91, '2024-05-02', 2024, 34, 30.34, 492.97, 12),
(15, 4, FALSE, 444.15, '2024-01-19', 2024, 27, 20.48, 300.4, 6),
(16, 8, FALSE, 795.94, '2024-04-25', 2024, 91, 19.54, 244.08, 34),
(17, 7, FALSE, 223.45, '2024-03-27', 2024, 64, 6.18, 382.95, 15),
(18, 10, FALSE, 604.81, '2024-05-29', 2024, 45, 32.37, 474.81, 11),
(19, 8, FALSE, 410.88, '2024-01-13', 2024, 114, 11.18, 388.8, 48),
(20, 4, TRUE, 266.29, '2024-06-01', 2024, 43, 9.39, 21.22, 31),
(21, 4, FALSE, 627.82, '2024-08-13', 2024, 53, 26.1, 47.33, 14),
(22, 6, TRUE, 606.22, '2024-08-23', 2024, 67, 43.01, 480.23, 31),
(23, 6, TRUE, 197.79, '2024-03-27', 2024, 62, 30.79, 177.97, 21),
(24, 8, TRUE, 425.33, '2024-02-29', 2024, 16, 17.93, 457.11, 29),
(25, 9, FALSE, 893.38, '2024-03-24', 2024, 45, 42.77, 216.34, 32),
(26, 3, FALSE, 854.45, '2024-01-20', 2024, 24, 26.45, 116.27, 36),
(27, 7, FALSE, 450.66, '2024-09-01', 2024, 101, 14.42, 392.39, 12),
(28, 5, TRUE, 921.48, '2024-08-14', 2024, 27, 14.79, 87.84, 22),
(29, 4, TRUE, 235.1, '2024-08-11', 2024, 91, 31.13, 178.27, 18),
(30, 10, FALSE, 727.39, '2024-08-28', 2024, 91, 30.72, 69.25, 50),
(31, 4, FALSE, 391.33, '2024-04-23', 2024, 5, 33.54, 281.69, 14),
(32, 8, TRUE, 387.72, '2024-11-03', 2024, 43, 17.91, 232.62, 50),
(33, 4, FALSE, 200.84, '2024-07-18', 2024, 42, 34.92, 451.11, 41),
(34, 5, FALSE, 797.1, '2024-12-10', 2024, 35, 49.61, 79.02, 30),
(35, 1, TRUE, 16.83, '2024-03-17', 2024, 75, 33.93, 217.83, 25),
(36, 6, FALSE, 308.87, '2024-06-23', 2024, 50, 10.44, 109.64, 43),
(37, 6, FALSE, 947.09, '2024-06-15', 2024, 39, 29.06, 297.15, 24),
(38, 7, FALSE, 250.89, '2024-12-20', 2024, 113, 44.99, 473.19, 21),
(39, 5, FALSE, 52.9, '2024-06-15', 2024, 66, 45.26, 126.0, 43),
(40, 5, TRUE, 978.03, '2024-02-13', 2024, 9, 42.45, 464.24, 47),
(41, 10, TRUE, 461.91, '2024-07-20', 2024, 74, 29.21, 67.58, 34),
(42, 6, FALSE, 374.04, '2024-12-09', 2024, 86, 19.96, 45.1, 27),
(43, 4, FALSE, 476.76, '2024-04-11', 2024, 24, 27.19, 123.06, 32),
(44, 3, TRUE, 316.52, '2024-05-14', 2024, 108, 35.75, 361.02, 3),
(45, 7, TRUE, 197.49, '2024-02-19', 2024, 11, 23.67, 423.06, 41),
(46, 6, TRUE, 98.48, '2024-06-28', 2024, 36, 48.83, 133.74, 46),
(47, 5, FALSE, 147.42, '2024-07-05', 2024, 62, 13.59, 490.7, 36),
(48, 3, FALSE, 996.56, '2024-09-05', 2024, 53, 27.86, 285.69, 48),
(49, 8, TRUE, 342.6, '2024-09-17', 2024, 26, 36.0, 491.93, 14),
(50, 6, TRUE, 866.2, '2024-11-24', 2024, 10, 15.62, 247.46, 44),
(51, 4, TRUE, 117.94, '2024-12-18', 2024, 105, 24.03, 422.48, 17),
(52, 4, FALSE, 843.67, '2024-08-03', 2024, 30, 23.27, 176.74, 40),
(53, 8, TRUE, 669.88, '2024-02-08', 2024, 75, 30.36, 216.51, 41),
(54, 8, FALSE, 670.97, '2024-06-30', 2024, 57, 37.41, 147.6, 48),
(55, 7, FALSE, 737.95, '2024-05-14', 2024, 86, 12.38, 43.74, 3),
(56, 1, TRUE, 887.87, '2024-08-16', 2024, 53, 42.36, 479.74, 41),
(57, 5, TRUE, 730.87, '2024-10-01', 2024, 28, 28.59, 488.71, 6),
(58, 1, TRUE, 431.62, '2024-07-10', 2024, 67, 43.21, 314.75, 49),
(59, 9, TRUE, 868.44, '2024-02-02', 2024, 95, 22.99, 332.43, 17),
(60, 10, TRUE, 316.5, '2024-12-02', 2024, 118, 47.29, 355.2, 31),
(61, 8, TRUE, 448.83, '2024-09-25', 2024, 84, 12.45, 110.59, 44),
(62, 1, TRUE, 73.43, '2024-04-04', 2024, 107, 39.38, 285.71, 3),
(63, 5, FALSE, 572.83, '2024-09-07', 2024, 80, 26.78, 467.98, 49),
(64, 10, TRUE, 240.58, '2024-02-04', 2024, 28, 42.71, 452.43, 8),
(65, 7, TRUE, 845.2, '2024-12-15', 2024, 43, 5.33, 457.04, 2),
(66, 5, FALSE, 198.21, '2024-06-12', 2024, 48, 20.14, 19.18, 5),
(67, 2, TRUE, 58.2, '2024-05-28', 2024, 55, 30.82, 401.04, 44),
(68, 1, FALSE, 445.47, '2024-11-29', 2024, 94, 29.34, 255.32, 4),
(69, 5, TRUE, 865.99, '2024-02-24', 2024, 45, 45.26, 440.25, 33),
(70, 10, TRUE, 634.79, '2024-12-16', 2024, 97, 22.4, 292.28, 26),
(71, 1, FALSE, 104.44, '2024-08-31', 2024, 79, 46.33, 331.49, 12),
(72, 10, TRUE, 183.04, '2024-10-29', 2024, 3, 17.44, 384.44, 20),
(73, 4, TRUE, 271.0, '2024-04-01', 2024, 30, 16.57, 409.7, 19),
(74, 4, FALSE, 357.53, '2024-07-18', 2024, 118, 46.1, 94.06, 2),
(75, 6, FALSE, 632.25, '2024-01-25', 2024, 95, 45.44, 52.8, 1),
(76, 3, TRUE, 33.02, '2024-11-19', 2024, 96, 16.65, 27.48, 34),
(77, 8, FALSE, 146.09, '2024-07-25', 2024, 57, 29.6, 304.38, 40),
(78, 10, FALSE, 514.57, '2024-03-24', 2024, 33, 8.68, 358.13, 15),
(79, 1, FALSE, 721.54, '2024-08-30', 2024, 49, 36.76, 255.93, 13),
(80, 4, FALSE, 630.13, '2024-08-20', 2024, 66, 16.8, 152.33, 19),
(81, 8, TRUE, 299.73, '2024-08-26', 2024, 106, 12.28, 125.62, 5),
(82, 10, FALSE, 699.7, '2024-11-02', 2024, 100, 26.09, 204.83, 15),
(83, 7, FALSE, 768.44, '2024-05-24', 2024, 3, 6.66, 116.94, 2),
(84, 8, TRUE, 102.28, '2024-01-12', 2024, 53, 37.9, 243.18, 37),
(85, 5, TRUE, 609.12, '2024-07-24', 2024, 108, 16.55, 227.63, 33),
(86, 4, FALSE, 699.38, '2024-10-01', 2024, 27, 36.64, 260.92, 40),
(87, 2, FALSE, 196.79, '2024-10-31', 2024, 26, 25.42, 452.19, 41),
(88, 10, TRUE, 691.03, '2024-03-18', 2024, 47, 23.09, 419.29, 36),
(89, 8, TRUE, 862.6, '2024-03-17', 2024, 66, 11.68, 172.25, 50),
(90, 1, TRUE, 199.59, '2024-01-30', 2024, 74, 46.52, 285.2, 17),
(91, 8, FALSE, 902.9, '2024-07-07', 2024, 52, 14.83, 243.9, 14),
(92, 10, TRUE, 58.85, '2024-08-15', 2024, 21, 7.85, 258.13, 34),
(93, 4, FALSE, 16.95, '2024-06-05', 2024, 108, 8.83, 443.64, 4),
(94, 5, FALSE, 950.02, '2024-11-12', 2024, 32, 24.1, 435.9, 16),
(95, 2, TRUE, 120.41, '2024-05-23', 2024, 14, 20.22, 153.31, 49),
(96, 7, TRUE, 456.18, '2024-05-01', 2024, 5, 31.98, 296.44, 43),
(97, 1, FALSE, 225.54, '2024-02-26', 2024, 57, 36.11, 285.7, 24),
(98, 7, FALSE, 332.66, '2024-10-28', 2024, 37, 26.67, 291.73, 36),
(99, 3, TRUE, 724.58, '2024-11-22', 2024, 21, 9.5, 363.65, 3),
(100, 9, TRUE, 662.4, '2024-06-25', 2024, 89, 47.95, 270.66, 46),
(101, 8, FALSE, 823.79, '2024-05-07', 2024, 17, 33.53, 91.54, 48),
(102, 9, FALSE, 639.42, '2024-11-14', 2024, 116, 28.9, 426.42, 29),
(103, 9, TRUE, 516.27, '2024-08-21', 2024, 16, 23.0, 356.34, 15),
(104, 5, FALSE, 157.01, '2024-04-02', 2024, 117, 9.68, 229.5, 44),
(105, 1, TRUE, 521.9, '2024-03-26', 2024, 62, 49.43, 372.15, 48),
(106, 7, FALSE, 689.1, '2024-07-25', 2024, 77, 11.91, 444.28, 46),
(107, 4, TRUE, 63.48, '2024-05-30', 2024, 101, 38.64, 414.9, 29),
(108, 5, TRUE, 427.77, '2024-12-15', 2024, 42, 25.84, 82.28, 9),
(109, 6, TRUE, 811.68, '2024-06-10', 2024, 63, 32.17, 22.21, 8),
(110, 7, TRUE, 60.08, '2024-06-24', 2024, 58, 20.31, 205.12, 41),
(111, 2, TRUE, 478.83, '2024-01-19', 2024, 20, 9.82, 484.48, 37),
(112, 10, TRUE, 931.69, '2024-08-06', 2024, 97, 10.56, 91.64, 15),
(113, 9, TRUE, 98.24, '2024-01-03', 2024, 113, 31.08, 481.04, 49),
(114, 10, FALSE, 993.95, '2024-04-15', 2024, 63, 30.42, 88.02, 45),
(115, 9, TRUE, 397.46, '2024-07-28', 2024, 10, 39.36, 246.98, 37),
(116, 5, FALSE, 460.56, '2024-05-27', 2024, 22, 5.78, 354.44, 17),
(117, 8, FALSE, 582.3, '2024-11-02', 2024, 56, 44.36, 69.63, 3),
(118, 7, TRUE, 712.59, '2024-02-27', 2024, 79, 5.03, 59.57, 9),
(119, 7, TRUE, 757.7, '2024-06-02', 2024, 65, 30.97, 270.74, 6),
(120, 5, FALSE, 607.89, '2024-01-11', 2024, 84, 44.79, 338.94, 34);


USE toysgroup;

/*1. Verificare che i campi definiti come PK siano univoci.*/
SELECT
p.ProductKey
FROM
product AS p
GROUP BY
p.ProductKey
HAVING 
COUNT(*) > 1;

SELECT
r.RegionKey
FROM
region AS r
GROUP BY
r.RegionKey
HAVING 
COUNT(*) > 1;

SELECT
s.SalesOrderNumber
, s.SalesOrderLineNumber
FROM
sales AS s
GROUP BY
s.SalesOrderNumber
, s.SalesOrderLineNumber
HAVING 
COUNT(*) > 1;

/*2. Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il 
fatturato totale per anno. */
SELECT 
    p.ProductName,
    p.ProductCategory,
    s.Year,
    SUM(s.SalesAmount) AS FatturatoTotale
FROM 
    product AS p
INNER JOIN 
    sales AS s 
    ON 
    p.ProductKey = s.ProductKey
WHERE 
    s.Sold = TRUE
GROUP BY 
    p.ProductName
    , p.ProductCategory
    , s.Year;
    
    /*3. Esporre il fatturato totale per stato per anno.
    Ordina il risultato per data e per fatturato decrescente. */
    /*NB: Ho ipotizzato che l'azienda ToysGroup lavorasse negli USA, quindi ho chiesto 
    a ChatGPT le regioni degli USA corrispondenti, per questo ho pensato di eseguire il
    punto 2 eguagliando il campo "Stato" della richiesta con il "RegionName" 
    del database in uso*/
 
 SELECT
r.RegionKey
, r.RegionName
, s.OrderDate
, s.Year
, SUM(s.SalesAmount) AS FatturatoTotale
FROM
region AS r
INNER JOIN
sales AS s
ON 
r.RegionKey = s.RegionKey
GROUP BY
r.RegionKey
, r.RegionName
, s.OrderDate
, s.Year
ORDER BY
s.OrderDate
, FatturatoTotale DESC;

/*4. Rispondere alla seguente domanda: 
qual è la categoria di articoli maggiormente richiesta dal mercato? */
SELECT 
    p.ProductCategory
    , COUNT(s.SalesOrderNumber) AS NumeroVendite
FROM 
    product AS p
INNER JOIN 
    sales AS s 
    ON 
    p.ProductKey = s.ProductKey
GROUP BY 
    p.ProductCategory
ORDER BY 
  NumeroVendite DESC
LIMIT 1;

/*NB: Per rispondere alla domanda del punto 4, ho inserito il "LIMIT 1" 
al fine di ottenere  la categoria di articoli maggiormente richiesta
dal mercato come richiesto. Tuttavia nella queery sottostante riporto 
la dicitura per ottenere l'elenco delle richieste di tutte  
le categorie per avere un prospetto maggiormente "dinamico" */

SELECT 
    p.ProductCategory
    , COUNT(s.SalesOrderNumber) AS NumeroVendite
FROM 
    product AS p
INNER JOIN 
    sales AS s 
    ON 
    p.ProductKey = s.ProductKey
GROUP BY 
    p.ProductCategory
ORDER BY 
  NumeroVendite DESC;



/*5. Rispondere alla seguente domanda: quali sono, se ci sono, i prodotti invenduti? 
Proponi due approcci risolutivi differenti.*/
-- Approcio n.1
SELECT
p.ProductKey
, p.ProductCategory
, p.ProductName
FROM 
product AS p
INNER JOIN
sales AS s
ON
p.ProductKey = s.ProductKey
WHERE 
s.Sold = 'FALSE'
GROUP BY
ProductKey;

-- Approcio n.2 
SELECT
p.ProductKey
, p.ProductCategory
, p.ProductName
FROM 
product AS p
INNER JOIN
sales AS s
ON
p.ProductKey = s.ProductKey
WHERE 
s.Sold 
NOT IN ('TRUE')
GROUP BY
ProductKey;

/*6. Esporre l’elenco dei prodotti con la rispettiva 
ultima data di vendita (la data di vendita più recente).*/
SELECT
p.ProductKey
, p.ProductCategory
, p.ProductName
, s.OrderDate
FROM 
product AS p
INNER JOIN
sales AS s
ON
p.ProductKey = s.ProductKey
GROUP BY
p.ProductKey
, s.OrderDate 
ORDER BY
s.OrderDate DESC;




