CREATE VIEW BikeBuyerTraining
AS 
SELECT  DATEDIFF(year, CAST(BirthDate as Datetime), GETDATE()) as Age,
        MaritalStatus,
        Gender,
        YearlyIncome,
        TotalChildren,
        NumberChildrenAtHome,
        EnglishEducation as Education,
        EnglishOccupation as Occupation,
        HouseOwnerFlag,
        CAST(NumberCarsOwned as integer) as NumberCarsOwned,
        City,
        StateProvince,
        PostalCode,
        CASE WHEN BikeOrderCount IS NULL THEN 0 ELSE 1 END as BikeBuyer
FROM [dbo].[DimCustomer] C
INNER JOIN [dbo].[DimGeography] G ON C.GeographyKey = G.GeographyKey
LEFT OUTER JOIN 
(
    select CustomerKey, count(salesordernumber) as BikeOrderCount
    from [dbo].[FactInternetSales] f
    inner join dimproduct p on f.productkey = p.productkey
    inner join [dbo].[DimProductSubcategory] psc on p.productsubcategorykey = psc.productsubcategorykey
    inner join [dbo].[DimProductCategory] pc on psc.productcategorykey = pc.productcategorykey
    where englishproductcategoryname = 'Bikes'
    group by customerkey
) F ON C.CustomerKey = F.CustomerKey
WHERE g.EnglishCountryRegionName = 'United States'