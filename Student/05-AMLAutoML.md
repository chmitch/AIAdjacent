# Challenge 5 - Building Models in Azure Machine Learning AutoML

## Prerequisites

1. [Challenge 4 - Building Machine Learning in Power BI](./04-PowerBIAutoML.md) should be done successfully.

## Introduction

Now that we have created an AML Designer based model and deployed that to an endpoint, we understand the process of model creation.  We can now use that to craft an AutoML run, deploy the best model to and endpoint, and finally use that endpoint back in Power BI.

## Success Criteria
1.  A published BikeBuyer model endpoint hosted in Azure ML using AutoML.
1.  Demonstrate usage of the API.
1.  Create a new dataflow in Power BI to leverage the published API.

## Basic Hackflow
1. Create an Azure Machine Learning Workspace in your Azure Subscription (Ensure it is "Enterprise")
1. Go to <a href=https://ml.azure.com target="_blank">ML Studio"</a> to launch the new "Studio" experience, ensure you are in the right "workspace"
1. Create a "Dataset" from a new "Datastore" by connecting it to the SQLServer in earlier labs and running 
   1. Use "Select * from BikeBuyerTraining"
1. Create an AutoML Service
1. Publish the "Best Model" to an Endpoint
    Try one with "No Authentication", "Token Authentication" and "Key Authentication" to see the differences in the swagger files
1. Test the Endpoint in Postman
1. Test in a Power BI Dataflow

## Hints

1.  Have a closer look at the columns in BikeBuyerTraining and Prospective Buyer.  What is different about these two tables?  Are there any differences that could be preventing you from using your model?

## Learning resources

## Hints
1.  If you don't want to write code to call the REST API, Postman is a great tool. (http://getpostman.com)


## Learning resources

|                                            |                                                                                                                                                       |
| ------------------------------------------ | :---------------------------------------------------------------------------------------------------------------------------------------------------: |
| **Description**                            |                                                                       **Links**                                                                       |
| Create, explore, and deploy automated machine learning experiments with Azure Machine Learning studio                    |        <https://docs.microsoft.com/en-us/azure/machine-learning/how-to-create-portal-experiments>         |
| Azure Machine Learning integration in Power BI | <https://docs.microsoft.com/en-us/power-bi/service-machine-learning-integration> |


[Optional challenge (Building Machine Learning Models in Azure Machine Learning Designer) >](./06-AMLDesigner.md)