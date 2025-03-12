-- Criação da Tabela "vendas"
CREATE TABLE vendas (
    id SERIAL PRIMARY KEY,
    valor DECIMAL(10, 2) NOT NULL
);

-- Inserção de dados na tabela
INSERT INTO vendas (valor) VALUES
(100.00), (200.00), (300.00), (200.00), (150.00),
(350.00), (400.00), (100.00), (250.00), (300.00);

-- Query para encontrar o k-ésimo maior valor
WITH ranking AS (
    SELECT 
        valor,
        RANK() OVER (ORDER BY valor DESC) AS rank_pos
    FROM vendas
)
SELECT valor
FROM ranking
WHERE rank_pos = 3;  -- Altere este valor para o "k" desejado
