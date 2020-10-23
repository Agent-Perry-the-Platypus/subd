ALTER TABLE СТО
ADD Рейтинг INT NULL;

ALTER TABLE Автомобіль
DROP COLUMN Колір;

ALTER TABLE Клієнт
ALTER COLUMN Будинок INT NULL;

ALTER TABLE СТО
ADD CHECK (Рейтинг<=5 AND Рейтинг>=0);