USE hospital_db_diogo;

ALTER TABLE `hospital_db_diogo`.`medicos` 
ADD COLUMN `em_atividade` BIT NOT NULL AFTER `e-mail`;

UPDATE medicos
SET em_atividade = 1
WHERE id > 0;

UPDATE medicos
SET em_atividade = 0
WHERE id IN (
  SELECT id
  FROM (
    SELECT id
    FROM medicos
    ORDER BY RAND()
    LIMIT 2
  ) AS subquery
);

SELECT 
nome,
CASE em_atividade
WHEN 0 THEN 'não'
WHEN 1 THEN 'sim'
END AS em_atividade
FROM medicos;

UPDATE internação
SET data_de_alta = DATE_ADD(data_de_entrada, INTERVAL 3 DAY)
WHERE id_quarto = 3;

ALTER TABLE `hospital_db_diogo`.`consulta` 
DROP FOREIGN KEY `fk_con`;
ALTER TABLE `hospital_db_diogo`.`consulta` 
ADD CONSTRAINT `fk_con`
  FOREIGN KEY (`convenio_id`)
  REFERENCES `hospital_db_diogo`.`convenio` (`id`)
  ON DELETE CASCADE;

ALTER TABLE `hospital_db_diogo`.`receitas` 
DROP FOREIGN KEY `fk_consulta`;
ALTER TABLE `hospital_db_diogo`.`receitas` 
ADD CONSTRAINT `fk_consulta`
  FOREIGN KEY (`consulta_id`)
  REFERENCES `hospital_db_diogo`.`consulta` (`id`)
  ON DELETE CASCADE;

ALTER TABLE `hospital_db_diogo`.`tempo_de_carencia` 
DROP FOREIGN KEY `fk_convenio`;
ALTER TABLE `hospital_db_diogo`.`tempo_de_carencia` 
ADD CONSTRAINT `fk_convenio`
  FOREIGN KEY (`convenio_id`)
  REFERENCES `hospital_db_diogo`.`convenio` (`id`)
  ON DELETE CASCADE;

DELETE FROM Convenio
WHERE id = 4;