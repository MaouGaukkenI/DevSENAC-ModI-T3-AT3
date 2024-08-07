# Hospital Database Project

This project is a database management system for a hospital. The database is designed to manage information about patients, doctors, insurance plans, specialties, consultations, prescriptions, admissions, and other aspects related to hospital operations.

## Database Structure

The `hospital_db_diogo` database consists of the following tables:

- **Pacientes**: Stores information about patients, including name, date of birth, address, phone, email, CPF, and RG.
- **Convenio**: Stores data about medical insurance plans, including name and CNPJ.
- **Tempo_de_carencia**: Records the waiting period associated with each patient and insurance plan.
- **Medicos**: Contains information about doctors, such as name, date of birth, address, phone, and email.
- **Especializacoes**: Lists the medical specialties available at the hospital.
- **Medico_especializacao**: Links doctors with their specialties.
- **Consulta**: Stores details about medical consultations, including date, doctor, patient, cost, and insurance plan.
- **Receitas**: Records prescriptions issued during consultations, including medications, quantity, and usage instructions.
- **Tipo_de_quarto**: Defines the different types of rooms available in the hospital.
- **Quartos**: Stores information about hospital rooms, including number and type.
- **Internação**: Records patient admissions, including entry and discharge dates, procedures performed, and information about the room and medical staff.
- **Enfermeiros**: Contains data about nurses, such as name, CPF, and CRE.
- **Enfermeiro_internação**: Links nurses with the admissions they participated in.
- **Quarto_internacao**: Links rooms with admissions.

## Features

- **Creation and Population**: The database can be created and populated with initial data using the provided SQL scripts.
- **Modifications and Updates**: Additional scripts allow for data updates and database structure adjustments, such as adding columns and modifying constraints.

## How to Use

1. Create the database using the creation script.
2. Populate the database with initial data using the population scripts.
3. Use the modification scripts to adjust the database structure as needed.

For more details, refer to the provided SQL script files.

# Projeto de Banco de Dados Hospitalar-Traduzido:

Este projeto é um sistema de gerenciamento de banco de dados para um hospital. O banco de dados foi projetado para gerenciar informações sobre pacientes, médicos, convênios, especializações, consultas, receitas, internações e outros aspectos relacionados ao funcionamento de um hospital.

## Estrutura do Banco de Dados

O banco de dados `hospital_db_diogo` é composto pelas seguintes tabelas:

- **Pacientes**: Armazena informações sobre pacientes, incluindo nome, data de nascimento, endereço, telefone, e-mail, CPF e RG.
- **Convenio**: Armazena dados sobre convênios médicos, incluindo nome e CNPJ.
- **Tempo_de_carencia**: Registra o tempo de carência associado a cada paciente e convênio.
- **Medicos**: Contém informações sobre médicos, como nome, data de nascimento, endereço, telefone e e-mail.
- **Especializacoes**: Lista as especializações médicas disponíveis no hospital.
- **Medico_especializacao**: Relaciona médicos com suas especializações.
- **Consulta**: Armazena detalhes sobre consultas médicas, incluindo data, médico, paciente, valor e convênio.
- **Receitas**: Registra as receitas prescritas durante as consultas, incluindo medicamentos, quantidade e instruções de uso.
- **Tipo_de_quarto**: Define os diferentes tipos de quartos disponíveis no hospital.
- **Quartos**: Armazena informações sobre os quartos do hospital, incluindo número e tipo.
- **Internação**: Registra as internações dos pacientes, incluindo datas de entrada e saída, procedimentos realizados e informações do quarto e equipe médica.
- **Enfermeiros**: Contém dados sobre enfermeiros, como nome, CPF e CRE.
- **Enfermeiro_internação**: Relaciona enfermeiros com as internações em que participaram.
- **Quarto_internacao**: Relaciona quartos com internações.

## Funcionalidades

- **Criação e Populamento**: O banco de dados pode ser criado e populado com dados iniciais usando scripts SQL fornecidos.
- **Alterações e Atualizações**: Scripts adicionais permitem atualizar dados e ajustar a estrutura do banco de dados conforme necessário, como adicionar colunas e modificar restrições.

## Como Usar

1. Crie o banco de dados usando o script de criação.
2. Popule o banco de dados com os dados iniciais usando os scripts de povoamento.
3. Utilize os scripts de alteração para ajustar a estrutura do banco de dados conforme necessário.

Para mais detalhes, consulte os arquivos de script SQL fornecidos.

