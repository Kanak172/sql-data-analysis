-- Data Insertion Script for Oracle 10g
-- Project: SQL Data Analysis Portfolio

INSERT INTO retail_transactions VALUES(1001, TO_DATE('2025-01-01', 'YYYY-MM-DD'), 'C001', 'P001', 'Laptop', 'Electronics', 2, 12000, 24000, 'North');
INSERT INTO retail_transactions VALUES(1002, TO_DATE('2025-01-02', 'YYYY-MM-DD'), 'C002', 'P002', 'Phone', 'Electronics', 5, 7000, 35000, 'South');
INSERT INTO retail_transactions VALUES(1003, TO_DATE('2025-01-03', 'YYYY-MM-DD'), 'C003', 'P003', 'Desk', 'Furniture', 3, 3000, 9000, 'East');
INSERT INTO retail_transactions VALUES(1004, TO_DATE('2025-01-04', 'YYYY-MM-DD'), 'C004', 'P004', 'Laptop', 'Electronics', 1, 12000, 12000, 'West');
INSERT INTO retail_transactions VALUES(1005, TO_DATE('2025-01-05', 'YYYY-MM-DD'), 'C005', 'P005', 'Chair', 'Furniture', 4, 2000, 8000, 'North');

COMMIT;