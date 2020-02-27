# Challenge 5 - Building Machine Learning in Azure Machine Learning

## Prerequisities

1. [Challenge 4 - Building Machine Learning in Power BI](./04-PowerBIAutoML.md) should be done successfuly.

## Introduction

Adventure Works marketing team loves the insights they've been getting from the Bike Buyer predictive model.  They love it so much, they'd like to apply it more broadly and use it from other systems.  Since the current model can only be used by Power BI, you've been asked to help Adventure Works recreate the model for use outside of Power BI.

## Success Criteria
1.  A published BikeBuyer model endpoint hosted in Azure ML.
1.  Demonstrate usage of the API.
1.  Create a new dataflow in Power BI to leverage the published API.

## Basic Hackflow
1. Create an Azure Machine Learning Workspace in your Azure Subscription (Enusre it is "Enterprise")
1. Go to "https://ml.azure.com" to launch the new "Studio" experince 
1. Create a "Dataset" from a new "Datastore" by connecting it to the SQLServer in earlier labs and running "select * from BikeBuyerTraining"
1. 


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


