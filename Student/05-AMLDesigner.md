# Challenge 5 - Building Models in Azure Machine Learning Designer

## Prerequisities

1. [Challenge 4 - Building Machine Learning in Power BI](./04-PowerBIAutoML.md) should be done successfully.

## Introduction

Adventure Works marketing team loves the insights they've been getting from the Bike Buyer predictive model.  They love it so much, they'd like to apply it more broadly and use it from other systems.  Since the current model can only be used by Power BI, you've been asked to help Adventure Works recreate the model for use outside of Power BI.  For our first step into this process lets use the Azure Machine Learning Studio Designer.  In subsequent labs we will imporve on this even more and learn new tools to rapidly implement ML Models.

## Success Criteria
1.  A published BikeBuyer model endpoint hosted in Azure ML
1.  Demonstrate usage of the API
1.  Create a new dataflow in Power BI to leverage the published API

## Basic Hackflow
1. Create an Azure Machine Learning Workspace in your Azure Subscription (Ensure it is "Enterprise")
1. Go to "https://ml.azure.com" to launch the new "Studio" experince, ensure you are in the right "workspace"
1. Create a "Dataset" from a new "Datastore" by connecting it to the SQLServer in earlier labs and running 
   1. Use "Select * from BikeBuyerTraining"
2. Create a new "Designer" Training Pipeline
   1. Add in the dataset
   2. Add "Edit Metadata" and create categorical features
   3. Add "Split Data"
   4. Add "Two Class Logistic Regression" 
   5. Add "Train Model"
   6. Add "Score Model"
   7. Add "Evaluate Model"
   8. Run the trained model
      1. Create Training Compute
3. Examine Model and output of each "pill"
4. Create "Inferencing Pipeline"
5. "Publish" to Endpoint
   1. Create AKS Cluster
6. Examine in "Endpoints"
7. Use the Swagger api to create Postman calls
   1. Use "Import from Link"
8. Test Postman calls for service health and inference output
9. Add into Power BI 


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

[Next challenge (Building Machine Learning Models in Azure Machine Learning AutoML) >](./06-AMLAutoML.md)
