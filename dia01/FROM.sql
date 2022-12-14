-- Databricks notebook source
 SELECT * FROM silver_olist.pedido;

-- Leia-se: selecione tudo da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido FROM silver_olist.pedido;

-- Leia-se: Selecione a coluna idPedido da tabela silver_olist.pedido.

-- COMMAND ----------

SELECT idPedido,
       descSituacao
FROM silver_olist.pedido;

-- Leia-se: Selecione as colunas idPedido, descSituacao da tabela silver_olist.pedido.

-- COMMAND ----------

SELECT idPedido,
       descSituacao
FROM silver_olist.pedido
LIMIT 5;

-- Leia-se: Selecione cinco linhas das colunas idPedido, descSituacao da tabela silver_olist.pedido.

-- COMMAND ----------

SELECT * FROM silver_olist.pedido;

-- COMMAND ----------

SELECT * ,
       DATEDIFF(dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega
FROM silver_olist.pedido;

-- COMMAND ----------


