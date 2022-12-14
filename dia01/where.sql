-- Databricks notebook source
SELECT * FROM silver_olist.pedido

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE descSituacao = 'delivered'
-- LIMIT 10;

-- leia-se: selecone todas as colunas da tabela silver_olist.pedido onde a situação do pedido seja entregue ('delivered').

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE descSituacao = 'processing'
-- LIMIT 10;

-- leia-se: selecone todas as colunas da tabela silver_olist.pedido onde a situação do pedido seja processando ('processing').

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE descSituacao = 'shipped'
AND year(dtPedido) = '2018'
-- LIMIT 10;

-- leia-se: selecone todas as colunas da tabela silver_olist.pedido onde a situação do pedido seja enviado ('shipped') E o ano seja igual a 2018.

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE (descSituacao = 'shipped' OR descSituacao = 'canceled')
AND year(dtPedido) = '2018'

-- Os parênteses são importantes para que a consulta entenda que deve buscar shipped OU canceled, mas anbos devem estar no ano 2018. 

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018'

-- Outra forma de escrever a consulta feita anteriormente.

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE descSituacao IN ('shipped','canceled')
AND year(dtPedido) = '2018'
AND datediff(dtEstimativaEntrega,dtAprovado) > 30

-- COMMAND ----------


