use [Ремонт_автомобілів]
CREATE TABLE Автомобіль (
[Код автомобіля] INT NOT NULL PRIMARY KEY, 
Марка NVARCHAR(15) NOT NULL, 
Рік DATE NOT NULL, 
Потужність FLOAT NOT NULL, 
[Тип двигуна] NVARCHAR(15) NOT NULL, 
[Тип кузова] NVARCHAR(16) NOT NULL, 
Колір  NVARCHAR(25), 
Вага FLOAT);

CREATE TABLE Клієнт(
[Код клієнта] INT NOT NULL PRIMARY KEY, 
Прізвище NVARCHAR(20) NOT NULL, 
[Ім’я] NVARCHAR(20) NOT NULL, 
[По батькові] NVARCHAR(23), 
[Стать] NVARCHAR(10), 
[Місто] NVARCHAR(25) NOT NULL, 
Вулиця NVARCHAR(35) NOT NULL,
Будинок NVARCHAR(5) NOT NULL,
Телефон INT NOT NULL);

CREATE TABLE Працівник(
[Код працівника] INT NOT NULL PRIMARY KEY, 
Прізвище NVARCHAR(20) NOT NULL, 
[Ім’я] NVARCHAR(20) NOT NULL, 
[По батькові] NVARCHAR(23), 
[Стать] NVARCHAR(10), 
Посада NVARCHAR(30) NOT NULL,  
Телефон INT NOT NULL);

CREATE TABLE СТО(
[Код СТО] INT NOT NULL PRIMARY KEY, 
Назва NVARCHAR(30) NOT NULL,
Сайт VARCHAR(100), 
Місто NVARCHAR(25) NOT NULL, 
Вулиця NVARCHAR(35) NOT NULL,
Будинок NVARCHAR(5) NOT NULL,
Телефон INT NOT NULL,
Пошта VARCHAR(100));

CREATE TABLE Деталь(
[Код деталі] INT NOT NULL PRIMARY KEY, 
Назва NVARCHAR(25) NOT NULL,
Вартість MONEY NOT NULL,
Виробник NVARCHAR(25));

CREATE TABLE Замовлення(
[Код замовлення] INT NOT NULL PRIMARY KEY,
[Код клієнта] INT NOT NULL,
[Код автомобіля] INT NOT NULL,
[Код працівника] INT NOT NULL,
[Код СТО] INT NOT NULL,
[Код деталі] INT NOT NULL, 
[Кількість деталей] INT NOT NULL,
[Дата замовлення] DATE NOT NULL,
FOREIGN KEY ([Код клієнта]) REFERENCES Клієнт([Код клієнта]) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([Код автомобіля]) REFERENCES Автомобіль([Код автомобіля]) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([Код працівника]) REFERENCES Працівник([Код працівника]) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([Код СТО]) REFERENCES СТО([Код СТО]) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY ([Код деталі]) REFERENCES Деталь([Код деталі]) ON DELETE CASCADE ON UPDATE CASCADE);
