CREATE DATABASE UNIVERSITET;

USE UNIVERSITET;

CREATE TABLE talaba(
    id INT AUTO_INCREMENT PRIMARY KEY,
    ismi VARCHAR(30),
    kursi INT,
    stipendiya float
);

INSERT INTO talaba (ismi, kursi, stipendiya) VALUES
('Ali', 1, 500000),
('Madina', 2, 550000),
('Jasur', 3, 600000),
('Nodira', 1, 520000),
('Aziz', 4, 650000),
('Gulnora', 2, 530000),
('Oybek', 3, 610000),
('Dildora', 1, 505000),
('Ravshan', 4, 670000),
('Shirin', 2, 540000);

-- 1

DELETE FROM talaba
WHERE kursi = 4;

UPDATE talaba
SET kursi = kursi + 1;

-- 2

SELECT kursi, COUNT(*) AS talaba_soni
FROM talaba
GROUP BY kursi;

