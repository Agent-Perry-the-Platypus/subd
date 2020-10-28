SELECT *
  FROM [Ремонт_автомобілів].[dbo].[Клієнт_1];

SELECT *
  FROM [Ремонт_автомобілів].[dbo].[Клієнт_2];

SELECT * FROM Клієнт_1
	UNION SELECT * FROM Клієнт_2

SELECT * FROM Клієнт_1
INTERSECT SELECT * FROM Клієнт_2

SELECT * FROM Клієнт_1
WHERE Клієнт_1.[Код клієнта] NOT IN (SELECT [Код клієнта] FROM Клієнт_2);

SELECT * FROM Клієнт_1
CROSS JOIN Клієнт_2;