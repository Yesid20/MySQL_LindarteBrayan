-- Crear las tablas 

USE metro_col;

CREATE TABLE `lines` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(10) NOT NULL,
    `color` VARCHAR(15) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
); 


DEFAULT CHARSET=utf8mb4 
-- Nos permite guardar datos inusuales como, emoji....
COLLATE=utf8mb4_unicode_ci; -- Va a comparar registros nuevo con registros antiguos


-- ALTER TABLE 

--USE nombredb;
-- ALTER TABLE `table_name`
-- MODIFY `column_name` MODIFICATION,
-- ADD PRIMARY KEY(column_name)

-- Creación de la tabla de stations 

CREATE TABLE `stations` (
    `id` BIGINT(20),
    `name` VARCHAR(50) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
)

CREATE TABLE `trains` (
    `serial_numbers` VARCHAR(10) NOT NULL,
    `line_id` BIGINT(20) UNSIGNED NOT NULL,
    `type` TINYINT(4) NOT NULL,
    `year` INT(4) NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP

    PRIMARY KEY (serial_numbers),
    CONSTRAINT `trains_line_id_foreign`
    FOREIGN KEY (`line_id`) REFERENCES `lines` (`id`)

)



