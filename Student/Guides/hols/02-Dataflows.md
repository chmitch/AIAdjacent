# Lab 2 - Working with Data in Power BI

## Prerequisities

1. [Lab 1 - Setup](./01-Setup.md) should be done successfuly.


## Introduction

Adventure works has been using a variety of reporting tools over the years, but is disillusioned with all of them.  Their CIO recently read a Gartner report on Power BI and is convinced they need to start doing all new report development on Power BI.  In order to prepare for the new report development, you've been tasked to setup a dataflow for some data in the warehouse for the purpose of building Power BI models.  Presently they have a need to represent the following data in the model:
*   Products
*   Customers
*   Sales
*   Fiscal Calendar

It is important to note that Adventure Works IT team had originally built their data warehouse on a "Snowflake" schema.  While this design works for the enterprise the structure of the model separating product catalog into three tables, and customer into two tables is a source of confusion for business users.  It is desired that the new model in Power BI should simplify this structure and endeavor to represent Customer as a single entity and Product as a single entity.


## Steps

### Part 1 - Create a Dataflow

1.  Create a workspace  ![](images/l02-i01.jpg 'Create a workspace')
1.  Create a new dataflow  ![](images/l02-i02.jpg 'Create a workspace') 
1.  Create a workspace  ![](images/l02-i01.jpg 'Create a workspace')
1.  On the new dataflow screen, select create new enties.  ![](images/l02-i03.jpg 'Create a workspace')
1.  On the new entities screen, there are a variety of data sources you can select from.  In this scenario we will be using a SQL Server database  ![](images/l02-i04.jpg 'Create a workspace')
1.  Enter the connection details for the database you created in Lab 1.  In particular you will need to enter the servername, databsename, username and password.  (Note:  SLQ Azure databases are sufifxed with .database.windows.net)  ![](images/l02-i05.jpg 'Create a workspace')
1.  After you've successfully conencted to the database, you will be presented a list of tables to connect to.  For this lab we will need the following tables/views Customers. Products, FactInternetSales, DimDate  ![](images/l02-i06.jpg 'Create a workspace')
1.  After selecting the appropriate tables, click "Transform Data".
1.  On this screen you will be presneted the opportunity to adjust the tables prior to import.  For this scenario the tables are in fine shape; however, you may want to give the tables a more friendly name.  Rename FactInternetSales to Sales, and DimDate to OrderDate.
1.  Click "Save & Close"
1.  You will be asked to give your Dataflow a name.  Rember, a "dataflow" is analogous to a databse, so pick something that is representative of the datasource, like "AdventureWorksDW".
1.  After you save the dataflow, you'll be presented an option to refresh.  Click "Refresh Now".

### Part 2 - Modeling in Power BI

1.  Launch Power BI Desktop
1.  Start the "Get Data" process.
1.  Select Power Platform -> Power BI Dataflows.  ![](images/l02-i09.jpg 'Create a workspace')
1.  Navigage to the appropriate dataflow and select all the published tables.  ![](images/l02-i10.jpg 'Create a workspace')
1.  After you've selected all the necessary tables, click load.  ![](images/l02-i11.jpg 'Create a workspace')
1.  Now that Power BI has done an initial data load, we need to correct some things in the datamodel.  Click on the "Model" icon on the left hand side of Power BI desktop.  ![](images/l02-i12.jpg 'Create a workspace')
1.  Power BI created the relationships for us, but it made the DueDate the default relationship.  We want to filter by order date by default.  Double click on the relationship between FactInternetSales and DueDate and turn off the "Make this relationship active"  ![](images/l02-i13.jpg 'Create a workspace')
1.  Now that the DueDate relationship is inactive, we can activate the OrderDate relationship. Double click on the relationship between FactInternetSales and OrderDate, and select "Make this relationship active".
1.  We're not really teaching Power BI here, but it's valuable to see how the data you've loaded can be visualized.  Spend some time working with the data you've loaded.  Build a report that illustrates sales by country and state.  ![](images/l02-i14.jpg 'Create a workspace')


## Additional learning materials

The following links provide additional information and tutorials on the skills used in this lab.

|                                            |                                                                                                                                                       |
| ------------------------------------------ | :---------------------------------------------------------------------------------------------------------------------------------------------------: |
| **Description**                            |                                                                       **Links**                                                                       |
| Self-service data prep with dataflows | <https://docs.microsoft.com/en-us/power-bi/service-dataflows-overview> |
| Create and use dataflows                    |                                <https://docs.microsoft.com/en-us/power-bi/service-dataflows-create-use>                                |

[Next lab (Working with Cognitive Services) >](./03-CognitiveServices.md)