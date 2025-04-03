-- Criar banco de dados caso não exista
CREATE DATABASE IF NOT EXISTS application;
USE application;

-- Criar tabela Genero
CREATE TABLE genero (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);
