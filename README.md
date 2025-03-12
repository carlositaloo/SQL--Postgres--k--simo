# Projeto SQL - k-ésimo Maior Valor

Este projeto contém uma query avançada em SQL (PostgreSQL) para encontrar o **k-ésimo maior valor** em uma tabela chamada `vendas`, sem o uso de subqueries recursivas.

## 🚀 Como Executar
1. Abra o **pgAdmin4** (Postgres) ou qualquer cliente SQL que você estiver utilizando.
2. Copie o conteúdo do arquivo `script.sql`.
3. Execute o script para criar a tabela, inserir dados e rodar a query.

## 📋 Estrutura do Projeto
- **`script.sql`** — Código SQL com a criação da tabela, inserção de dados e a query final.
- **`README.md`** — Explicação detalhada sobre o projeto.

## ⚙️ Exemplo de Resultado
- `k = 1` → **400.00**  
- `k = 2` → **350.00**  
- `k = 3` → **300.00**  


##  🔍Estrutura apenas para a pesquisa:
```
WITH ranking AS (
    SELECT 
        valor,
        RANK() OVER (ORDER BY valor DESC) AS rank_pos
    FROM vendas
)
SELECT valor
FROM ranking
WHERE rank_pos = 2;  -- Altere este valor para o "k" desejado
```

## 📝 O que significa "k-ésimo maior valor"?
- O 1º maior valor é o maior valor da tabela.
- O 2º maior valor é o segundo maior número da tabela.
- O k-ésimo maior valor é o valor que ocupa a posição "k" quando os valores estão ordenados de forma decrescente.

## 🔧 Desafio:

Como subqueries recursivas estão proibidas, uma solução eficiente envolve usar a função DISTINCT, ORDER BY, e a função de ranking chamada ROW_NUMBER() ou RANK(). Normalmente, uma solução comum envolve subqueries que selecionam o MAX() dos valores menores que o valor atual.

✅ Entendendo o desafio fica facil procurar a solução do RANK() na internet! 🚀
