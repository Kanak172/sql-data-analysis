-- Insert Script for Oracle 10g (15 Consistent Transactions)

INSERT INTO retail_transactions VALUES (1001, 'C001', 'Laptop',    'Electronics', 1, 1200.00, 1200.00, TO_DATE('2025-01-01', 'YYYY-MM-DD'), 'North');
INSERT INTO retail_transactions VALUES (1002, 'C002', 'Phone',     'Electronics', 2,  800.00, 1600.00, TO_DATE('2025-01-01', 'YYYY-MM-DD'), 'South');
INSERT INTO retail_transactions VALUES (1003, 'C003', 'Chair',     'Furniture',   4,  150.00,  600.00, TO_DATE('2025-01-02', 'YYYY-MM-DD'), 'East');
INSERT INTO retail_transactions VALUES (1004, 'C001', 'Monitor',   'Electronics', 2,  300.00,  600.00, TO_DATE('2025-01-02', 'YYYY-MM-DD'), 'North');
INSERT INTO retail_transactions VALUES (1005, 'C004', 'Desk',      'Furniture',   1,  500.00,  500.00, TO_DATE('2025-01-03', 'YYYY-MM-DD'), 'West');
INSERT INTO retail_transactions VALUES (1006, 'C002', 'Laptop',    'Electronics', 1, 1200.00, 1200.00, TO_DATE('2025-01-03', 'YYYY-MM-DD'), 'South');
INSERT INTO retail_transactions VALUES (1007, 'C005', 'Bookshelf', 'Furniture',   2,  200.00,  400.00, TO_DATE('2025-01-04', 'YYYY-MM-DD'), 'North');
INSERT INTO retail_transactions VALUES (1008, 'C003', 'Phone',     'Electronics', 1,  800.00,  800.00, TO_DATE('2025-01-04', 'YYYY-MM-DD'), 'East');
INSERT INTO retail_transactions VALUES (1009, 'C006', 'Chair',     'Furniture',   6,  150.00,  900.00, TO_DATE('2025-01-05', 'YYYY-MM-DD'), 'West');
INSERT INTO retail_transactions VALUES (1010, 'C004', 'Monitor',   'Electronics', 1,  300.00,  300.00, TO_DATE('2025-01-05', 'YYYY-MM-DD'), 'West');
INSERT INTO retail_transactions VALUES (1011, 'C007', 'Laptop',    'Electronics', 2, 1200.00, 2400.00, TO_DATE('2025-01-06', 'YYYY-MM-DD'), 'North');
INSERT INTO retail_transactions VALUES (1012, 'C002', 'Chair',     'Furniture',   2,  150.00,  300.00, TO_DATE('2025-01-06', 'YYYY-MM-DD'), 'South');
INSERT INTO retail_transactions VALUES (1013, 'C008', 'Phone',     'Electronics', 3,  800.00, 2400.00, TO_DATE('2025-01-07', 'YYYY-MM-DD'), 'East');
INSERT INTO retail_transactions VALUES (1014, 'C001', 'Desk',      'Furniture',   2,  500.00, 1000.00, TO_DATE('2025-01-07', 'YYYY-MM-DD'), 'North');
INSERT INTO retail_transactions VALUES (1015, 'C009', 'Laptop',    'Electronics', 1, 1200.00, 1200.00, TO_DATE('2025-01-08', 'YYYY-MM-DD'), 'South');

COMMIT;