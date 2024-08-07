-- Utilização do banco de dados:

USE hospital_db_diogo;

-- script de povoamento:
-- base: 
-- INSERT INTO  especializacoes VALUES( , '');
-- INSERT INTO convenio VALUES(, '', '');
-- INSERT INTO tipo_de_quarto VALUES(, '');
-- INSERT INTO quartos VALUES(, , );

INSERT INTO  especializacoes (id, nome) VALUES
( 1, 'pediatria'),
( 2, 'clínico geral'),
( 3, 'gastroenterologia '),
( 4, 'dermatologia'),
( 5, 'obstetra'),
( 6, 'cirurgião plástico'),
( 7, 'dentista');

INSERT INTO convenio (id, nome, CNPJ) VALUES
(1, 'Alice Saúde', '42.783.175/0001-62'),
(2, 'Benevida', '29.815.713/0001-95'),
(3, 'Ana Costa', '08.446.311/0001-90'),
(4, 'KIPP SAÚDE', '60.992.638/0001-88');

INSERT INTO tipo_de_quarto (id, tipo) VALUES
(1, 'apartamentos'),
(2, 'quartos duplos'),
(3, 'enfermaria');

INSERT INTO quartos (id, numero, id_tipo) VALUES
(1, 12, 3),
(2, 5, 1),
(3, 27, 2);

