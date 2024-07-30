CREATE DATABASE milliy_taomlar;

USE milliy_taomlar;

CREATE TABLE ovqat (
    id INT AUTO_INCREMENT PRIMARY KEY,
    taom_nomi VARCHAR(30),
    taom_masalliqlari VARCHAR(100)
);

INSERT INTO ovqat (taom_nomi, taom_masalliqlari) VALUES
('Osh', "Go'sht, guruch, sabzi, piyoz, yog', tuz, suv"),
("Sho'rva", "Go'sht, kartoshka, piyoz, sabzi, yog', tuz, suv"),
("Mastava", "Go'sht, guruch, kartoshka, piyoz, yog', tuz, suv"),
("Manti", "Go'sht, kartoshka, piyoz, yog', tuz, un, suv"),
("Chuchvara", "Go'sht, kartoshka, piyoz, yog', tuz, un, suv"),
("Somsa", "Go'sht, kartoshka, piyoz, yog', tuz, un, suv");

-- 1-topshiriq:
SELECT * 
FROM ovqat 
WHERE taom_nomi LIKE "%a";

-- 2-topshiriq:
SELECT * 
FROM ovqat 
WHERE taom_masalliqlari LIKE "%guruch%";