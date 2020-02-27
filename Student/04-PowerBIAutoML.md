# Challenge 4 - Building Machine Learning in Power BI

## Prerequisities

1. [Challenge 3 - Working with Cognitive Services](./03-CognitiveServices.md) should be done successfully.

## Introduction
The Adventure Works business users have loved all the additional insights they've been getting form the text analytics features added to the model.  They'd love to take their advanced analytics to the next level by trying to predict outcomes.  Adventure Works makes most of it's income off of selling big ticket items like bikes, in order to try and increase bike sales marketing has acquired a list of prospective customers.   The marketing team would like to assess which of these customers is most likely to buy a bike so they can send a targeted mailing to a select group of customers.

## Success Criteria
1.  Leverage the existing customer data to train a model to predict buying a bike
1.  Score the list of prospective customers for their propensity to buy a bike
1.  In Power BI build one or more reports to highlight which customers are most likely to buy a bike
1.  Generate the model performance report so see metrics about the model created by Auto ML


## Basic Hackflow
1. Edit the existing data flow and import additional entites for BikeBuyerTraining and ProspectiveBuyer from the data warehouse
1. Save and refesh the dataflow
1. Add a new machine learning model to the dataflow
1. Select BikeBuyerTraining as the data source and BikeBuyer as the target column to predict
1. Select 1 as the target value, and provide labels for the positive and negative test cases
1. Select all the provided columns to train (Note: we've pruned the dataset to avoid errors, but this is where you'd have an opportunity to exclude fields from the training)
1. Move the slider to reduce the training time to **5 minutes** (Note: the default is 120)
1. Run the training
1. When training completes you'll be able to generate a report to view the details of your model and see which fields had the most impact on the results
1. Now that you have a trained model, select apply model to score your prospective buyers, map the fields and execute the scoring
1. In Power BI desktop load the scored data and build reports

## Hints

1.  Have a closer look at the columns in BikeBuyerTraining and Prospective Buyer.  What is different about these two tables?  Are there any differences that could be preventing you from using your model?

## Learning resources

|                                            |                                                                                                                                                       |
| ------------------------------------------ | :---------------------------------------------------------------------------------------------------------------------------------------------------: |
| **Description**                            |                                                                       **Links**                                                                       |
| Automated Machine Learning in Power BI | <https://docs.microsoft.com/en-us/power-bi/service-machine-learning-automated> |
| Tutorial: Build a Machine Learning model in Power BI | <https://docs.microsoft.com/en-us/power-bi/service-tutorial-build-machine-learning-model> |
| Age Calculation in Power BI using Power Query | <https://radacad.com/age-calculation-in-power-bi-using-power-query> | 


[Next challenge (Building Models in Azure Machine Learning - Designer) >](./05-AMLDesigner.md)
