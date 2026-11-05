-- Database Schema Script for Oracle 10g
-- Project: SQL Data Analysis Portfolio

-- Drop table if it already exists (optional, for clean re-runs)
BEGIN
   EXECUTE IMMEDIATE 'DROP TABLE retail_transactions';
EXCEPTION
   WHEN OTHERS THEN
      IF SQLCODE != -942 THEN
         RAISE;
      END IF;
END;
/

-- Create retail_transactions table
CREATE TABLE retail_transactions (
    order_id NUMBER(10) PRIMARY KEY,
    order_date DATE,
    customer_id VARCHAR2(10),
    product_id VARCHAR2(10),
    product_name VARCHAR2(50),
    category VARCHAR2(50),
    quantity NUMBER(5),
    unit_price NUMBER(10, 2),
    sales NUMBER(12, 2),
    region VARCHAR2(30)
);

COMMIT;