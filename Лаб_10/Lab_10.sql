use Ремонт_автомобілів;
GO
CREATE PROCEDURE Procedure_0 AS
SELECT Прізвище,[Ім’я],Посада,Телефон
FROM Працівник;
GO
EXEC Procedure_0;
GO;

CREATE FUNCTION FUNCTION0(@cost money, @count as int)
RETURNS money
AS
	BEGIN
	if(@cost<0 and @count<0)
		return 0
	Return (@cost*@count)
END;
GO

Select[Код замовлення], dbo.FUNCTION0(Вартість, [Кількість деталей]) as [Загальна вартість]
FROM Замовлення
INNER JOIN Деталь ON Замовлення.[Код деталі]= Деталь.[Код деталі];


Select [Код замовлення],Вартість*[Кількість деталей] as [Загальна вартість]
FROM Замовлення
INNER JOIN Деталь ON Замовлення.[Код деталі]= Деталь.[Код деталі]