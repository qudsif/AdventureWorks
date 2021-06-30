SELECT
	ProductKey,
	OrderDateKey,
	DueDateKey,
	ShipDate,
	CustomerKey,
	SalesOrderNumber,
	SalesAmount
FROM 
	FactInternetSales
WHERE
	LEFT(OrderDateKey,4) >= YEAR(GETDATE()) -2  --Ensures we only look back 2 years when extracting data'