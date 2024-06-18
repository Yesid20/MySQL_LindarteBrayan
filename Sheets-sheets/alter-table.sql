USE metro_col;

ALTER TABLE `stations`
MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY(id);

-- Añadir llaves foraneas 
-- ADD CONSTRAINT `trains_line_id_foreign`
-- FOREIGN KEY(`line_id`) REFERENCES `LINES`(`id`);
