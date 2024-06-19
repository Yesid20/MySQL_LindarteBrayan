-- DELETE FROM `NOMBRE_TABLA`
-- WHERE column_condition = "value_condition";

--TRUNCATE TABLE `TABLE_NAME` REINICIA LOS ID 

DELETE FROM `stations`
WHERE id = 164;

select id from `stations` where name = "merced";

-- Vaciar TODA una table

DELETE FROM `stations`;

--Asi se borren los registros no reinicia los ID. 

--Para reiniciar los ID se utiliza TRUNCATE TABLE

TRUNCATE TABLE `NOMBRE_TABLA`;

--BORRAR TABLE 

DROP TABLE `NOMBRE_TABLE`;

