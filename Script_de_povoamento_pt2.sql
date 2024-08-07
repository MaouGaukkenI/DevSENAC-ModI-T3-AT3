-- Utilização do banco de dados:

USE hospital_db_diogo;

-- script de povoamento:
-- base: 
-- INSERT INTO medicos (id, nome, data_de_nascimento, endereco, telefone, e-mail) VALUES
-- INSERT INTO pacientes (id, nome, data_de_nascimento, endereco, telefone, e-mail, CPF, RG) VALUES
-- INSERT INTO enfermeiros (id, nome, CPF, CRE) VALUES
-- INSERT INTO tempo_de_carencia (id, tempo_de_carencia, convenio_id, paciente_id) VALUES
-- INSERT INTO consulta (id, data_hora, medico_id, paciente_id, valor, convenio_id, numero_carteira, especialidade_id) VALUES
-- INSERT INTO receitas (id, medicamento, quantidade, instrucoes_de_uso, consulta_id ) VALUES
-- INSERT INTO internação (id, data_de_entrada, data_prevista_de_alta, data_de_alta, procedimentos, id_quarto, id_enfermeiros, id_medico, id_paciente) VALUES
-- INSERT INTO enfermeiro_internação (id_internação, id_enfermeiros) VALUES


INSERT INTO  medicos VALUES
(1, 'Carlos', '11/06/1980', '96071-182', '(86) 93458-3632', 'carlin302@gmail.com'),
(2, 'Rosane', '11/11/1984', '96085-230', '(51) 93187-6253', 'rosilinha@gmail.com'),
(3, 'Paoula', '02/10/1996', '96085-215', '(49) 92850-0932', 'pulinha123321@gmail.com'),
(4, 'Marcos', '11/05/1993', '96095-300', '(82) 92832-0101', 'marquinhos30@hotmail.com'),
(5, 'Pedro', '18/04/1963', '96040-610', '(85) 93288-8998', 'prdinhogamer@hotmail.com'),
(6, 'Sophia', '25/07/1957', '96080-450', '(41) 92684-8704', 'sophi123@gmail.com'),
(7, 'Priscila', '01/12/1959', '96010-018', '(65) 92883-2760', 'prinsces135@hotmail.com'),
(8, 'Joaquim', '29/06/1968', '96020-730', '(19) 93748-4766', 'jotinhaplayer13@gmail.com'),
(9, 'João', '10/06/1958', '96083-170', '(69) 92518-6748', 'jãodograu22@hotmail.com'),
(10, 'Maria', '08/04/1981', '96085-282', '(92) 93668-6368', 'mariavaicasota@hotmai.com');

INSERT INTO  pacientes VALUES
(1, 'Larissa', '06/04/1946', '96075-510', '(85) 92252-7847', 'lari30@hotmail.com', '550.580.430-68', '27.459.988-0'),
(2, 'Raissa', '14/08/1969', '96040-504', '(94) 93826-7617', 'rairai1212@gmail.com', '080.365.080-95', '49.596.043-3'),
(3, 'Caio', '27/09/1976', '96060-500', '(86) 92873-4344', 'caioxuxu@hotmail.com', '401.711.700-75', '24.619.619-1'),
(4, 'Isabella', '18/02/2018', '96090-650', '(22) 93523-1595', 'Isalove25@gmail.com', '880.066.050-92', '29.284.494-3'),
(5, 'Ryan', '13/04/1982', '96040-692', '(95) 93630-5877', 'ryangameplays@gmail.com', '445.797.990-20', '31.761.435-6'),
(6, 'Igor', '17/02/2019', '96095-300', '(95) 93229-5295', 'igorara40@hotmail.com', '579.279.310-75', '31.761.435-6'),
(7, 'Martim', '04/03/2002', '96072-060', '(43) 92386-7327', 'martim2020@gmail.com', '746.016.460-73', '21.763.091-1'),
(8, 'Matilde', '12/07/1948', '96081-275', '(67) 92012-9863', 'matdolove321@hotmail.com', '370.705.200-18', '43.768.015-0'),
(9, 'Sophia', '01/11/2000', '96070-246', '(83) 93881-4768', 'sophi1234@hotmail.com', '248.128.120-97', '23.500.749-3'),
(10, 'Thaís', '12/06/1984', '96040-030', '(79) 92176-2506', 'thaithais2@gmail.com', '753.812.640-62', '38.136.634-0');

INSERT INTO enfermeiros VALUES
(1, 'Catia', '380.337.330-12', '2501'),
(2, 'Sandra', '032.227.370-61', '3011'),
(3, 'Paulo', '150.576.150-68', '5062'),
(4, 'Roger', '381.950.510-57', '8475'),
(5, 'Isack', '824.054.270-01', '9315'),
(6, 'Jorge', '509.905.040-93', '6452');

INSERT INTO tempo_de_carencia VALUES
(1, '2021-01-07', 1, 2),
(2, '2018-06-15', 2, 3),
(3, '2015-08-22', 4, 7),
(4, '2016-09-30', 2, 6),
(5, '2010-10-08', 3, 3);

INSERT INTO consulta VALUES
(1, '2018-03-20', 8, 1, 100, null, null, 4), 
(2, '2019-04-30', 6, 10, 200, null, null,6), 
(3, '2019-09-23', 7, 9, 150, null, null, 5), 
(4, '2021-01-07', 4, 2, 220, 1, 55643215, 1), 
(5, '2020-04-09', 3, 5, 70, null, null, 7), 
(6, '2020-08-10', 5, 3, 95, 2, 12342342, 3), 
(7, '2017-08-09', 2, 4, 125, null, null, 1), 
(8, '2018-02-25', 9, 7, 100, 4, 2354641656, 3), 
(9, '2021-07-07', 10, 6, 200, 2, 12352392,2), 
(10, '2017-10-08', 1, 8, 220, 3, 4548643, 6); 

INSERT INTO receitas VALUES
(1, 'paracetamol, profenid', '20 Comprimidos e 40Comprimidos', 'tomar o paracetamol de 6 em 6 horas, e o profenid de 8 em 8 horas, manter os medicamentos alternando os, ingerir de preferencia após alimentar-se.', 9),
(2, 'Paracetamol, Carbinoxamina', '35 Comprimidose 12 Comprimidos', 'ingerir os comprimidos de 6 em 6 horas', 4),
(3, 'Fenilefrina, Paracetamol', '26 Comprimidos e 32 Comprimidos', 'ingerir o paracetamol de 6 em 6 horas, e o Fenilefrina de 12 em 12 horas', 7),
(4, 'Muvinlax, LuftaGastroPro', '20ml e 45ml', 'tomar 5mls do LuftaGastroPro duas vezes no dia, após o termino do LuftaGastroPro ingerir o Muvinlax por completo', 6),
(5, 'Muvinlax, LuftaGastroPro', '50mls e 80ml', 'ingerir por completo o Muvinlax, e ingerir o LuftaGastroPro de 5 em 5mls diariamente.', 8);

INSERT INTO internação VALUES
(1, '2021-07-21', '2021-09-21', '2021-08-21', 1, 1, 1, 5, 3), 
(2, '2019-05-03', '2019-07-03', '2019-06-03', 2, 2, 2, 8, 2), 
(3, '2019-04-11', '2019-05-11', '2022-05-10', 3, 1, 3, 4, 5), 
(4, '2020-06-12', '2020-09-12', '2020-08-12', 4, 3, 4, 7, 4), 
(5, '2018-01-06', '2018-04-06', '2018-03-06', 5, 2, 5, 6, 6), 
(6, '2018-08-17', '2018-09-17', '2018-03-06', 6, 1, 6, 2, 2), 
(7, '2022-02-10', '2022-05-10', '2022-06-10', 7, 3, 7, 1, 6);

INSERT INTO enfermeiro_internação VALUES
(1,1, 2), (2,1, 4), (3,1, 5),
(4,2, 3), (5,2, 3), (6,2, 4), (7,2,5),
(8,3, 1), (9,3, 6),
(10,4, 5), (11,4, 1), (12,4, 6),
(13,5, 6), (14,5, 4),
(15,6, 6), (16,6, 3), (17,6, 4),
(18,7, 4), (19,7, 5), (20,7, 2);
