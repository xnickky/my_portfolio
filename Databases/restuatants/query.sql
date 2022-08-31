SELECT 
	  invoice_id,
    invoice_datetime,
    locate_name,
    customer_name,
    customer_table,
    menu_name,
    employee_name || ' ' || employee_lastname AS employee_n
    
    FROM invoice as inv
    JOIN customers as cus
    ON inv.customer_id = cus.customer_id
    JOIN menu AS me
    ON inv.menu_id = me.menu_id
    JOIN location as locate 
    ON inv.locate_id = locate.locate_id
    JOIN employees as emp
    ON inv.employee_id = emp.employee_id
    
    WHERE locate_name IN ('Pattaya','Bang Na')
    ORDER by invoice_id;
