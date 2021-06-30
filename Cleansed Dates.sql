/****** CLEANED DATE TABLE  ******/
SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  --,[DayNumberOfWeek]  
  [EnglishDayNameOfWeek] AS Day, --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear] 
  [WeekNumberOfYear] AS WeekNumber, 
  [EnglishMonthName] AS Month, 
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  LEFT([EnglishMonthName], 3) AS MonthShort,
  [MonthNumberOfYear] AS MonthNum, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
WHERE
	CalendarYear >= 2019
