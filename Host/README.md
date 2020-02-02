# Setup instructions for the AI Adjacent content

The source database for this hack is a port of the Adventure Works DW database.  The original database creation script was slightly modified to account for differences between SQL Server and Azure SQL.  In addition the script was modified to account for differences in the way bulk copy works in Azure SQL.  To save headaches we have provided the bacpac to include all the schema creation, data importing, and additional view creation.

In order to recreate the Adventure Works DW you have two options.
1.  [Prefered] Restore the database from the provided bacpac file.
1.  Create an empty databse and execute the creation scripts.

## Creation via bacpac restore
1.  Copy the included bacpac file to a storate account.
1.  Run the folloiwng azure cli command to restore the file (be sure to replace the values for the various parameters first)

```
az sql db import -s myserver -n mydatabase -g mygroup -p password -u login \
    --storage-key "?sr=b&sp=rw&se=2018-01-01T00%3A00%3A00Z&sig=mysignature&sv=2015-07-08" \
    --storage-key-type SharedAccessKey \
    --storage-uri https://myAccountName.blob.core.windows.net/myContainer/myBacpac.bacpac
```

## Creation via build script considerations.
1.  You must copy all the .csv files to a blob storage container.
1.  You must generate a sas key for the storage container.
1.  You must alter the script to include the appropriate sas key (credential creation)
1.  You must execute the create script in SQL-CMD mode.
