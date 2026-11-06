-- Schema Definition for Oracle 10g / ANSI SQL
-- Table: retail_transactions

DROP TABLE retail_transactions CASCADE CONSTRAINTS;

CREATE TABLE retail_transactions (
   order_id        NUMBER(10)      NOT NULL,
   customer_id     VARCHAR2(10)    NOT NULL,
   product_name    VARCHAR2(50)    NOT NULL,
   category        VARCHAR2(30)    NOT NULL,
   quantity        NUMBER(5)       NOT NULL,
   unit_price      NUMBER(10, 2)   NOT NULL,
   sales           NUMBER(12, 2)   NOT NULL,
   order_date      DATE            NOT NULL,
   region          VARCHAR2(20)    NOT NULL,
   CONSTRAINT pk_retail_trans PRIMARY KEY (order_id),
   CONSTRAINT chk_qty_positive CHECK (quantity > 0),
   CONSTRAINT chk_price_positive CHECK (unit_price > 0),
   CONSTRAINT chk_sales_positive CHECK (sales > 0)
);