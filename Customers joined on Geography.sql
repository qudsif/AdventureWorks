SELECT 
	c.CustomerKey,
	c.FirstName,
	c.LastName,
	c.FirstName + ' ' + c.LastName AS FullName,
	CASE
		WHEN c.Gender = 'M' THEN 'Male'
		WHEN c.Gender = 'F' THEN 'Female'
		ELSE c.Gender
	END AS Gender,
	c.DateFirstPurchase,
	g.City AS CustomerCity
FROM
	DimCustomer c
LEFT JOIN
	DimGeography g
ON
	c.GeographyKey = g.GeographyKey
