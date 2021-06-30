SELECT
	p.ProductKey,
	p.ProductAlternateKey,
	p.EnglishProductName AS ProductName,
	s.EnglishProductSubcategoryName AS ProductSubcategory,
	c.EnglishProductCategoryName AS ProductCategory,
	p.Color,
	p.Size,
	p.ProductLine,
	p.ModelName,
	p.EnglishDescription AS ProductDescription,
	ISNULL(p.Status, 'Outdated') AS ProductStatus
FROM
	DimProduct p
LEFT JOIN
	DimProductSubcategory s
ON
	p.ProductSubcategoryKey = s.ProductSubcategoryKey
LEFT JOIN
	DimProductCategory c
ON
	s.ProductCategoryKey = c.ProductCategoryKey
