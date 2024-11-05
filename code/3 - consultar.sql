USE Loja;

-- Criação da view para contas não pagas
CREATE VIEW ContasNaoPagas AS
SELECT 
    cr.ID AS ContaID,
    c.Nome AS ClienteNome,
    c.CPF AS ClienteCPF,
    cr.DataVencimento,
    cr.Valor
FROM 
    ContaReceber cr
JOIN 
    Cliente c ON cr.Cliente_ID = c.ID
WHERE 
    cr.Situacao = '1';

-- Consultar a view para verificar os dados
SELECT * FROM ContasNaoPagas;
