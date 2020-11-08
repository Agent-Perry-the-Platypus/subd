USE Ремонт_автомобілів;

BEGIN TRANSACTION 
INSERT INTO Деталь VALUES (12, N'Шини', 499.00,N'Україна'); 
INSERT INTO Деталь VALUES (13, N'Диски', 441.00,N'Японія'); 
INSERT INTO Деталь VALUES (14, N'Повітряний фільтр', 49.00,N'Китай'); 
INSERT INTO Деталь VALUES (15, N'Амортизатор', 201.00,N'Японія'); 
ROLLBACK;

