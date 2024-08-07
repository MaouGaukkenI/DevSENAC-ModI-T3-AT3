-- Criação do banco de dados:

CREATE DATABASE hospital_db_diogo;

-- Utilização do banco de dados:

USE hospital_db_diogo;

-- Criação das tabelas

CREATE TABLE Pacientes(
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `data_de_nascimento` VARCHAR(45) NOT NULL,
  `endereco` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `e-mail` VARCHAR(45) NOT NULL,
  `CPF` VARCHAR(45) NOT NULL,
  `RG` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE Convenio(
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `CNPJ` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE Tempo_de_carencia(
  `id` INT NOT NULL AUTO_INCREMENT,
  `Tempo_de_carencia` DATETIME NOT NULL,
  `convenio_id` INT NOT NULL,
  `paciente_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_paciente_idx` (`paciente_id` ASC) VISIBLE,
  INDEX `fk_convenio_idx` (`convenio_id` ASC) VISIBLE,
  CONSTRAINT `fk_paciente`
    FOREIGN KEY (`paciente_id`)
    REFERENCES `hospital_db_Diogo`.`Pacientes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_convenio`
    FOREIGN KEY (`convenio_id`)
    REFERENCES `hospital_db_Diogo`.`Convenio` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE Medicos(
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `data_de_nascimento` VARCHAR(45) NOT NULL,
  `endereco` VARCHAR(45) NOT NULL,
  `telefone` VARCHAR(45) NOT NULL,
  `e-mail` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE Especializacoes(
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE Medico_especializacao(
  `id` INT NOT NULL AUTO_INCREMENT,
  `medico_id` INT NOT NULL,
  `especializacao_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_medico_idx` (`medico_id` ASC) VISIBLE,
  INDEX `fk_especializcao_idx` (`especializacao_id` ASC) VISIBLE,
  CONSTRAINT `fk_medico`
    FOREIGN KEY (`medico_id`)
    REFERENCES `hospital_db_Diogo`.`Medicos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_especializcao`
    FOREIGN KEY (`especializacao_id`)
    REFERENCES `hospital_db_Diogo`.`Especializacoes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
		CREATE TABLE Consulta(
  `id` INT NOT NULL AUTO_INCREMENT,
  `data_hora` DATETIME NOT NULL,
  `medico_id` INT NOT NULL,
  `paciente_id` INT NOT NULL,
  `valor` DECIMAL NOT NULL,
  `convenio_id` INT NULL,
  `numero_carteira` VARCHAR(45) NULL,
  `especialidade_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pac_idx` (`paciente_id` ASC) VISIBLE,
  INDEX `fk_med_idx` (`medico_id` ASC) VISIBLE,
  INDEX `fk_esp_idx` (`especialidade_id` ASC) VISIBLE,
  INDEX `fk_con_idx` (`convenio_id` ASC) VISIBLE,
  CONSTRAINT `fk_pac`
    FOREIGN KEY (`paciente_id`)
    REFERENCES `hospital_db_Diogo`.`Pacientes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_med`
    FOREIGN KEY (`medico_id`)
    REFERENCES `hospital_db_Diogo`.`Medicos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_esp`
    FOREIGN KEY (`especialidade_id`)
    REFERENCES `hospital_db_Diogo`.`Especializacoes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_con`
    FOREIGN KEY (`convenio_id`)
    REFERENCES `hospital_db_Diogo`.`Convenio` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
CREATE TABLE Receitas(
  `id` INT NOT NULL AUTO_INCREMENT,
  `medicamento` VARCHAR(100) NOT NULL,
  `quantidade` VARCHAR(100) NOT NULL,
  `instrucoes_de_uso` LONGTEXT NOT NULL,
  `consulta_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_consulta_idx` (`consulta_id` ASC) VISIBLE,
  CONSTRAINT `fk_consulta`
    FOREIGN KEY (`consulta_id`)
    REFERENCES `hospital_db_Diogo`.`Consulta` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
CREATE TABLE Tipo_de_quarto(
  `id` INT NOT NULL AUTO_INCREMENT,
  `tipo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE Quartos(
  `id` INT NOT NULL AUTO_INCREMENT,
  `numero` INT NOT NULL,
  `id_tipo` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tipo_de_quarto_idx` (`id_tipo` ASC) VISIBLE,
  CONSTRAINT `fk_tipo_de_quarto`
    FOREIGN KEY (`id_tipo`)
    REFERENCES `hospital_db_Diogo`.`Tipo_de_quarto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
CREATE TABLE Internação(
  `id` INT NOT NULL AUTO_INCREMENT,
  `data_de_entrada` DATETIME NOT NULL,
  `data_prevista_de_alta` DATETIME NOT NULL,
  `data_de_alta` DATETIME NOT NULL,
  `procedimentos` LONGTEXT NOT NULL,
  `id_quarto` INT NOT NULL,
  `id_enfermeiros` INT NOT NULL,
  `id_medico` INT NOT NULL,
  `id_paciente` INT NOT NULL,
  PRIMARY KEY (`id`, `id_enfermeiros`),
  INDEX `fk_medico_idx` (`id_medico` ASC) VISIBLE,
  INDEX `fk_paciente_idx` (`id_paciente` ASC) VISIBLE,
  INDEX `fk_quarto_idx` (`id_quarto` ASC) VISIBLE,
  INDEX `fk_enfermeiros_idx` (`id_enfermeiros` ASC) VISIBLE,
  CONSTRAINT `fk_medi`
    FOREIGN KEY (`id_medico`)
    REFERENCES `hospital_db_Diogo`.`Medicos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_paci`
    FOREIGN KEY (`id_paciente`)
    REFERENCES `hospital_db_Diogo`.`Pacientes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_quar`
    FOREIGN KEY (`id_quarto`)
    REFERENCES `hospital_db_Diogo`.`Quartos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
 
 CREATE TABLE Enfermeiros(
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `CPF` VARCHAR(45) NOT NULL,
  `CRE` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
  
CREATE TABLE Enfermeiro_internação(
 `id` INT NOT NULL AUTO_INCREMENT,
  `id_internação` INT NOT NULL,
  `id_enfermeiros` INT NOT NULL,
  INDEX `fk_Enfermeiro_internação_idx` (`id_enfermeiros` ASC) VISIBLE,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_Internação_internação`
    FOREIGN KEY (`id_internação`)
    REFERENCES `hospital_db_Diogo`.`Internação` (`id_enfermeiros`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Enfermeiro_internação`
    FOREIGN KEY (`id_enfermeiros`)
    REFERENCES `hospital_db_Diogo`.`Enfermeiros` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
CREATE TABLE Quarto_internacao(
  `id` INT NOT NULL AUTO_INCREMENT,
  `id_quarto` INT NOT NULL,
  `id_internacao` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_quarto_idx` (`id_quarto` ASC) VISIBLE,
  INDEX `fk_intenação_idx` (`id_internacao` ASC) VISIBLE,
  CONSTRAINT `fk_quarto`
    FOREIGN KEY (`id_quarto`)
    REFERENCES `hospital_db_Diogo`.`Quartos` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_intenação`
    FOREIGN KEY (`id_internacao`)
    REFERENCES `hospital_db_Diogo`.`Internação` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
-- Tudo feito