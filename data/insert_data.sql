-- Expanded Data Insertion Script for Oracle 10g (15 Transactions)
TRUNCATE TABLE retail_transactions;

INSERT INTO retail_transactions VALUES(1001, TO_DATE('2025-01-01', 'YYYY-MM-DD'), 'C001', 'P001', 'Laptop', 'Electronics', 2, 12000, 24000, 'North');
INSERT INTO retail_transactions VALUES(1002, TO_DATE('2025-01-01', 'YYYY-MM-DD'), 'C002', 'P002', 'Phone', 'Electronics', 5, 7000, 35000, 'South');
INSERT INTO retail_transactions VALUES(1003, TO_DATE('2025-01-02', 'YYYY-MM-DD'), 'C003', 'P003', 'Desk', 'Furniture', 3, 3000, 9000, 'East');
INSERT INTO retail_transactions VALUES(1004, TO_DATE('2025-01-02', 'YYYY-MM-DD'), 'C004', 'P001', 'Laptop', 'Electronics', 1, 12000, 12000, 'West');
INSERT INTO retail_transactions VALUES(1005, TO_DATE('2025-01-03', 'YYYY-MM-DD'), 'C001', 'P005', 'Chair', 'Furniture', 4, 2000, 8000, 'North');
INSERT INTO retail_transactions VALUES(1006, TO_DATE('2025-01-03', 'YYYY-MM-DD'), 'C005', 'P004', 'Monitor', 'Electronics', 2, 4500, 9000, 'South');
INSERT INTO retail_transactions VALUES(1007, TO_DATE('2025-01-04', 'YYYY-MM-DD'), 'C002', 'P001', 'Laptop', 'Electronics', 1, 12000, 12000, 'South');
INSERT INTO retail_transactions VALUES(1008, TO_DATE('2025-01-04', 'YYYY-MM-DD'), 'C006', 'P006', 'Bookshelf', 'Furniture', 2, 5000, 10000, 'East');
INSERT INTO retail_transactions VALUES(1009, TO_DATE('2025-01-05', 'YYYY-MM-DD'), 'C003', 'P002', 'Phone', 'Electronics', 2, 7000, 14000, 'East');
INSERT INTO retail_transactions VALUES(1010, TO_DATE('2025-01-05', 'YYYY-MM-DD'), 'C007', 'P005', 'Chair', 'Furniture', 6, 2000, 12000, 'West');
INSERT INTO retail_transactions VALUES(1011, TO_DATE('2025-01-06', 'YYYY-MM-DD'), 'C001', 'P002', 'Phone', 'Electronics', 1, 7000, 7000, 'North');
INSERT INTO retail_transactions VALUES(1012, TO_DATE('2025-01-06', 'YYYY-MM-DD'), 'C008', 'P003', 'Desk', 'Furniture', 1, 3000, 3000, 'South');
INSERT INTO retail_transactions VALUES(1013, TO_DATE('2025-01-07', 'YYYY-MM-DD'), 'C004', 'P004', 'Monitor', 'Electronics', 3, 4500, 13500, 'West');
INSERT INTO retail_transactions VALUES(1014, TO_DATE('2025-01-07', 'YYYY-MM-DD'), 'C009', 'P001', 'Laptop', 'Electronics', 2, 12000, 24000, 'North');
INSERT INTO retail_transactions VALUES(1015, TO_DATE('2025-01-08', 'YYYY-MM-DD'), 'C002', 'P005', 'Chair', 'Furniture', 5, 2000, 10000, 'South');

COMMIT;


