---------- How many country group in each group ?

SELECT
	  Country_Groups,
    COUNT(6) AS sum_each_country_group
		FROM
        
(SELECT 
		  customerid,
    	firstname || ' ' || lastname AS full_name_customers,
    	city,
    	state,
   		country,
          CASE
    			  WHEN country in ('USA','Canada') THEN 'USA/CND'
       	 		WHEN country IN ('France','Belgium','Germany') THEN 'Europeans'
				    WHEN country = 'Brazil' THEN 'South America'
        	ELSE 'Other'
            END AS "Country_Groups"
            FROM customers)
            GROUP BY Country_Groups
            ORDER BY sum_each_country_group;
