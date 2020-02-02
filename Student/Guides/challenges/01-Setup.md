# Challenge 1 - Setup

## Prerequisities

1. Your laptop: Windows (VM or Parallels is fine, sorry MacOS or Linux users, Power BI Desktop only runs on Windows).
1. Your Azure Subscription


## Introduction 

### Set up your development environment.

The first challenge is to setup an environment that will help you build the end to end solution.  The primary exercise here is ensuring the necessary database, storage, and Power BI capacity exist for subsequent labs.

 
## Challenges

1.  Create an Azure SQL Database server in the Azure Portal.  (Note:  Make sure you setup the databse to allow access from other Azure services.)
2.  A backup of the AdventureWorksDW has been provided for you in the following location:  from the following blob location:  https://cgmaiadjacent.blob.core.windows.net/backup/AdventureWorksDW.bacpac  

    In the Azure integrated CLI, run the following command with the servername, resourcegroup name, login and password from the server created in the prior step, to restore the AdventureWorksDW Database: 

    ```
    az sql db import -s <server> -n AdventureWorksDW -g <resourcegroup> -p <password> -u <login> \
        --storage-key "?st=2020-02-02T16%3A52%3A22Z&se=2021-02-03T16%3A52%3A00Z&sp=rl&sv=2018-03-28&sr=b&sig=THWG%2B%2FWsGQCp92jr6ozu3tzzRsv9i0vizSB9Ez0AS3Q%3D" \
        --storage-key-type SharedAccessKey \
        --storage-uri https://cgmaiadjacent.blob.core.windows.net/backup/AdventureWorksDW.bacpac
    ```
3.  Create new Power BI Embedded Capacity of size A2.  
1.  Login to PowerBI.com and create a new Application Workspace, and assign the created Power BI Embedded capacity to the workspace.  (Note:  It is important to login to Power BI with the same user that is set as the admin on the Power BI Embedded capacity.

## Success criteria

1.  A restored version of the Adventure Works Data Warehouse.
1.  A Power BI application workspace with assigned premium capacity.

[Next challenge (Working with Data in Power BI) >](./02-Dataflows.md)