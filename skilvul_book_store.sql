-- CREATE database bernama skilvulbookstore
CREATE DATABASE skilvulbookstore;

--create table penerbit
CREATE TABLE penerbit (
    id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(50) NULL,
    kota VARCHAR(50) NULL
);

--create table penulis
CREATE TABLE penulis (
    id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(50) NULL,
    kota VARCHAR(50) NULL
);

-- create table buku
CREATE TABLE buku (
    id INT(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ISBN VARCHAR(50) NULL,
    judul VARCHAR(50) NULL,
    penulis INT(10) NULL,
    penerbit INT(10) NULL,
    harga INT(10) NULL,
    stock INT(10) NULL,
    constraint fk_penulis foreign key (penulis) references penulis(id),
    constraint fk_penerbit foreign key (penerbit) references penerbit(id)
);

-- INNER JOIN 
SELECT * FROM buku
INNER JOIN penerbit
ON buku.penerbit = penerbit.id;

-- LEFT JOIN
SELECT * FROM buku
LEFT JOIN penerbit
ON buku.penerbit = penerbit.id;

-- RIGHT JOIN 
SELECT * FROM buku
RIGHT JOIN penerbit
ON buku.penerbit = penerbit.id;

-- MAX
SELECT MAX(harga)
FROM buku
WHERE stock < 10;

-- MIN
SELECT MIN(harga)
FROM buku;

-- COUNT
SELECT COUNT(id)
FROM buku
WHERE harga < 10000;