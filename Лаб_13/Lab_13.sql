﻿USE Ремонт_автомобілів;
GO

SET SHOWPLAN_ALL ON;
GO
SELECT [Клієнт].[Прізвище],[Клієнт].[Ім’я],[Клієнт].[По батькові],[Клієнт].[Місто],
[Клієнт].[Вулиця],[Клієнт].[Будинок],[Замовлення].[Код замовлення],[Замовлення].[Код клієнта],
[Замовлення].[Код автомобіля],[Замовлення].[Код працівника],[Замовлення].[Код СТО],
[Замовлення].[Код деталі],[Замовлення].[Кількість деталей],[Замовлення].[Дата замовлення],[Деталь].[Назва],[Деталь].[Вартість]
FROM (Клієнт INNER JOIN Замовлення ON Замовлення.[Код клієнта]=Клієнт.[Код клієнта])
INNER JOIN Деталь ON Деталь.[Код деталі]=Замовлення.[Код деталі]
WHERE Вулиця = ANY (SELECT Вулиця FROM СТО )
AND Місто LIKE N'Л%' 
AND  MONTH([Дата замовлення]) BETWEEN 1 AND 5;
GO
SET SHOWPLAN_ALL OFF;


SET SHOWPLAN_ALL ON;
GO
SELECT [Клієнт].[Прізвище],[Клієнт].[Ім’я],[Клієнт].[По батькові],[Клієнт].[Місто],
[Клієнт].[Вулиця],[Клієнт].[Будинок],[Замовлення].[Код замовлення],[Замовлення].[Код клієнта],
[Замовлення].[Код автомобіля],[Замовлення].[Код працівника],[Замовлення].[Код СТО],
[Замовлення].[Код деталі],[Замовлення].[Кількість деталей],[Замовлення].[Дата замовлення],[Деталь].[Назва],[Деталь].[Вартість]
FROM Замовлення, Клієнт,Деталь
WHERE Вулиця IN (SELECT Вулиця FROM СТО )
AND Замовлення.[Код клієнта]=Клієнт.[Код клієнта]
AND Деталь.[Код деталі]=Замовлення.[Код деталі]
AND Місто LIKE N'Л%' 
AND  MONTH([Дата замовлення]) BETWEEN 1 AND 5;
GO
SET SHOWPLAN_ALL OFF;