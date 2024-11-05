CREATE DATABASE Loja;
USE Loja;

-- Tabela Estado
CREATE TABLE Estado (
    ID INT AUTO_INCREMENT,
    Nome VARCHAR(60) NOT NULL,
    UF CHAR(2) NOT NULL,
    PRIMARY KEY (ID)
);

-- Tabela Municipio
CREATE TABLE Municipio (
    ID INT AUTO_INCREMENT,
    Nome VARCHAR(80) NOT NULL,
    CodIBGE INT,
    Estado_ID INT NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (Estado_ID) REFERENCES Estado(ID)
);

-- Tabela Cliente
CREATE TABLE Cliente (
    ID INT AUTO_INCREMENT,
    Nome VARCHAR(80) NOT NULL,
    CPF CHAR(11) NOT NULL,
    Celular CHAR(11),
    End_logradouro VARCHAR(100),
    End_numero VARCHAR(10),
    End_complemento VARCHAR(30),
    End_cep CHAR(8),
    Municipio_ID INT NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (Municipio_ID) REFERENCES Municipio(ID)
);

-- Tabela ContaReceber
CREATE TABLE ContaReceber (
    ID INT AUTO_INCREMENT,
    Cliente_ID INT NOT NULL,
    FaturaVencida INT NOT NULL,
    DataConta DATE,
    DataVencimento DATE,
    Valor DECIMAL(12, 2),
    Situacao ENUM('1', '2', '3') NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (Cliente_ID) REFERENCES Cliente(ID)
);

-- Criação dos índices (opcional, pois as foreign keys já criam índices automaticamente)
CREATE INDEX fk_Municipio_Estado1_idx ON Municipio (Estado_ID);
CREATE INDEX fk_Cliente_Municipio1_idx ON Cliente (Municipio_ID);
CREATE INDEX fk_ContaReceber_Cliente1_idx ON ContaReceber (Cliente_ID);
