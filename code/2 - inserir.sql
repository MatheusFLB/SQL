USE Loja;

-- Inserir dados na tabela Estado
INSERT INTO Estado (Nome, UF) VALUES 
('São Paulo', 'SP'),
('Rio de Janeiro', 'RJ'),
('Minas Gerais', 'MG');

-- Inserir dados na tabela Municipio
INSERT INTO Municipio (Nome, CodIBGE, Estado_ID) VALUES 
('São Paulo', 3550308, 1),
('Rio de Janeiro', 3304557, 2),
('Belo Horizonte', 3106200, 3);

-- Inserir dados na tabela Cliente
INSERT INTO Cliente (Nome, CPF, Celular, End_logradouro, End_numero, End_complemento, End_cep, Municipio_ID) VALUES 
('João da Silva', '12345678901', '11999999999', 'Rua A', '123', 'Apto 1', '01001000', 1),
('Maria Souza', '09876543210', '21988888888', 'Rua B', '456', 'Casa', '20020030', 2),
('Carlos Pereira', '11223344556', '31977777777', 'Rua C', '789', 'Apto 2', '30130040', 3);

-- Inserir dados na tabela ContaReceber
INSERT INTO ContaReceber (Cliente_ID, FaturaVencida, DataConta, DataVencimento, Valor, Situacao) VALUES 
(1, 1, '2023-01-01', '2023-01-15', 150.00, '1'),
(2, 0, '2023-02-01', '2023-02-15', 200.00, '2'),
(3, 1, '2023-03-01', '2023-03-15', 250.00, '3');
