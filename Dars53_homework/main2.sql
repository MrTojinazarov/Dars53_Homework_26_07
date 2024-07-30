CREATE DATABASE texno_park;

USE texno_park;

CREATE TABLE compyuters(
    id INT AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(30),
    model VARCHAR(30),
    protsessor VARCHAR(64),
    frequency  float,
    ram float,
    OS VARCHAR(30),
    price float
);


INSERT INTO compyuters (brand, model, protsessor, frequency, ram, OS, price) VALUES  
('Lenovo', 'ThinkPad X1 Carbon', 'Intel Core i7', 3.9, 16, 'Windows 10', 1500.00),  
('Dell', 'XPS 13', 'Intel Core i7', 4.0, 16, 'Windows 10', 1400.00),  
('Apple', 'MacBook Pro 16', 'Apple M1 Pro', 3.2, 16, 'macOS Monterey', 2500.00),  
('HP', 'Spectre x360', 'Intel Core i7', 4.6, 16, 'Windows 10', 1600.00),  
('Acer', 'Aspire 5', 'Intel Core i5', 4.4, 8, 'Ubuntu 20.04', 600.00),  
('Asus', 'ZenBook 14', 'Intel Core i7', 4.2, 16, 'Windows 10', 1300.00),  
('Microsoft', 'Surface Laptop 4', 'Intel Core i5', 4.2, 8, 'Windows 10', 1000.00),  
('Razer', 'Blade 15', 'Intel Core i7', 4.9, 16, 'Windows 10', 2200.00),  
('Samsung', 'Galaxy Book Pro', 'Intel Core i5', 4.2, 8, 'Ubuntu 20.04', 900.00),  
('LG', 'Gram 15', 'Intel Core i7', 4.7, 16, 'Windows 10', 1700.00),  
('Lenovo', 'Legion 5', 'AMD Ryzen 7', 4.6, 16, 'Windows 10', 1200.00),  
('Dell', 'Inspiron 15', 'Intel Core i3', 3.4, 8, 'Windows 10', 500.00),  
('Apple', 'MacBook Air', 'Apple M1', 3.2, 8, 'Kaliy 07', 999.00),  
('HP', 'Pavilion 15', 'Intel Core i5', 4.2, 12, 'Windows 10', 700.00),  
('Acer', 'Predator Helios 300', 'Intel Core i7', 4.5, 16, 'Windows 10', 1400.00),  
('Asus', 'ROG Zephyrus G14', 'AMD Ryzen 9', 4.7, 32, 'Windows 10', 2300.00),  
('Toshiba', 'Dynabook Satellite', 'Intel Core i5', 4.0, 8, 'Windows 10', 800.00),  
('Huawei', 'MateBook X Pro', 'Intel Core i7', 4.9, 16, 'Windows 10', 1500.00),  
('Microsoft', 'Surface Pro 7', 'Intel Core i5', 3.5, 8, 'Ubuntu 20.04', 900.00),  
('Asus', 'Yoga Slim 7', 'AMD Ryzen 5', 4.0, 8, 'Windows 10', 950.00),  
('Dell', 'G3 Gaming Laptop', 'Intel Core i5', 3.9, 8, 'Windows 10', 900.00);


-- 1

SELECT *
FROM compyuters
ORDER BY price  DESC
LIMIT 1;

-- 2

SELECT *
FROM compyuters
ORDER BY price
LIMIT 1;

-- 3

SELECT frequency
FROM compyuters
WHERE price BETWEEN 400 AND 1000 AND protsessor LIKE "%Intel%";

-- 4

SELECT COUNT(brand) as Apple_soni
FROM compyuters
WHERE brand LIKE "Apple";

-- 5

SELECT *
FROM compyuters
WHERE OS LIKE "%Windows%" AND ram = 16 AND brand LIKE "%Acer%"
ORDER BY price ASC;