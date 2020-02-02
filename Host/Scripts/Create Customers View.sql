CREATE VIEW Customers
AS 
SELECT  FirstName,
        MiddleName,
        LastName,
        BirthDate,
        MaritalStatus,
        Gender,
        EmailAddress,
        YearlyIncome,
        TotalChildren,
        NumberChildrenAtHome,
        EnglishEducation as Education,
        EnglishOccupation as Occupation,
        HouseOwnerFlag
        NumberCarsOwned,
        AddressLine1,
        AddressLine2,
        City
        StateProvince,
        PostalCode,
        Phone,
        Title as Salutation,
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