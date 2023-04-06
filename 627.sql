-- Write an SQL query to swap all 'f' and 'm' values (i.e., change all 'f' values to 'm' and vice versa) with a single update statement and no intermediate temporary tables.




UPDATE salary
        WHEN 'f' THEN 'm'
        ELSE 'f'
    END;