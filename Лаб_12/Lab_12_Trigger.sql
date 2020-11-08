USE Ремонт_автомобілів
GO
CREATE TRIGGER Del_Insert
ON Клієнт_1
AFTER DELETE
AS
INSERT INTO Клієнт_2
SELECT*
FROM DELETED;
GO

CREATE TRIGGER UD_Del
ON Клієнт_2
AFTER UPDATE
AS
DELETE FROM Клієнт_1 WHERE Клієнт_1.Місто=(SELECT Місто FROM DELETED);
GO

CREATE TRIGGER Insert_Insert
ON Клієнт_1
AFTER INSERT
AS
INSERT INTO Клієнт_2([Код клієнта],Прізвище,[Ім’я],Місто,Вулиця,Телефон)
SELECT [Код клієнта],Прізвище,[Ім’я],Місто,Вулиця,Телефон
FROM inserted;