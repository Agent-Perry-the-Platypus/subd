SELECT *
  FROM [Ремонт_автомобілів].[dbo].[Деталь];

INSERT INTO Деталь 
VALUES (1, N'Повітряний фільтр', 115.00,N'Польща'); 

INSERT INTO Деталь 
VALUES (2, N'Шини', 499.00,N'Україна'),(3, N'Диски', 441.00,N'Японія'); 


SELECT *
  FROM [Ремонт_автомобілів].[dbo].[СТО]

UPDATE СТО SET Рейтинг = 3
WHERE Місто=N'Львів';

DELETE FROM СТО
WHERE Рейтинг<3; 