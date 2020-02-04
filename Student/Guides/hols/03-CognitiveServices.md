# Lab 3 - Working with Cognitive Services

## Prerequisities

1. [Lab 2 - Working with Data in Power BI](./02-Dataflows.md) should be done successfuly.


## Introduction

Adventure Works has been getting great business value out of the new model published in Power BI.  Now that users are gaining new insights into historical data they are asking for some advanced analytics features to get additional value and insights from the existing data.  Adventure Works analytics team quickly realized that they don't have the expertise to write artificial intelligence models.  They would like to leverage some native features of the cloud to apply AI to their existing data.  Presently they have a need to do the following:
*   Adventure Works sells products around the world, they have a need to discover the language used in a public review.
*   Some of the customers leave very verbose reviews, while getting positive feedback is always nice, Adventure Works is most concerned about negative feedback, they'd like to analyze the sentiment of a review to quickly find the negative reviews.
*   Since many of the reviews are very long, it would be great to extract some key details about the review from the larger text.
*   Optional:  Classify images in the products table.

The data warehouse team has the request to add reviews information to the data warehouse on their feature backlog, so you'll have to acquire the file from the team that runs Adventure Works website.  The team has been kind enough to extract the data for you as a delimited file in blob storage.

## Steps

### Part 1 - Augment the data flow with Bike Reviews.

1.  Since the Adventure Works warehouse doesn't have the product review data, We need to edit the existing dataflow to add additional entities.  ![](images/l03-01.png 'Create a workspace')
1.  In the edit view, you need to select the action you'd like to take.  In this case it's a new entity, so select add entities. ![](images/l03-02.png 'Create a workspace')
1.  Since the data is not in the Adventure Works databse, we need o select an alternate source.  This time we're working with a file in blob storage.  Select text as the data source.  ![](images/l03-03.png 'Create a workspace')
1. Enter the url path to the reviews data:![](images/l03-04.png 'Create a workspace')
1.  Click Next
1.  Now that we've defined the data source, give the file a meaningful name like "Bike Reviews".
Click the AI Insights button to apply text mining to the data. ![](images/l03-05.png 'Create a workspace')

### Part 2 - Extend the Bike Reviews data with Cognitive Services

1.  We want to perform text analytics on the data.  First lets add language detection.  Click on the "AI Insights" option.  The first step is to identify the language of the review.
![](images/l03-06.png 'Create a workspace')
1.  Expand cognitive services and pick "CognitiveServices.DetectLanguage"
![](images/l03-07.png 'Create a workspace')
1.  Pick the "Review" column. 
![](images/l03-08.png 'Create a workspace')
1.  Click "Apply".
1.  The extended dataset has a new column named "CognitiveServices.DetectLanguage" click expand icon to extend the record.
![](images/l03-09.png 'Create a workspace')
1.  Click "OK" to accept both of the values from the record.
1.  The new column names are very verbose, rename the columns to have more friendly titles.

### Part 3 - Extend AI Insights
1.  Now that we've detected the language, we can use the language for other purposes.  Click Apply AI insights again to add sentiment analytics select "CognitiveServices.ScoreSentiment"
![](images/l03-10.png 'Create a workspace')
1.  Edit the inputs for the ScoreSentiment API to include the review text, and the new LanguageISO column, and click "Apply"
![](images/l03-11.png 'Create a workspace')
1.  Finally repeat the previous steps for applying a cognitive service, but use the CognitiveServices.ExtractKeyPhrases API.
![](images/l03-12.png 'Create a workspace')
1.  There are now new columns for sentiment and key phrases, rename them, and click "Save & Close"
1.  Click "Refresh Now"

### Part 4 - Visualize the text analytics data in Power BI
1.  We now need to add the data to our power bi model for visualization.   Go back to power bi desktop and add the new BikeReviews table to the model.
![](images/l03-13.png 'Create a workspace')
1.  Since the new table came from a different source Power BI could not rely on the database for any relationship hints.  We'll need to build the relationship.  
![](images/l03-14.png 'Create a workspace')
1.  For this data Model from the reviews = ModelName in products.  Drag one column to the other.
![](images/l03-15.png 'Create a workspace')
1.  Click "Ok".
1.  Build a view in Power BI that shows sentiment for product model and product sub category. (NOTE:  Power BI by default treated the sentiment as text, you need to change the datatype in the model to Decimal.  Also the default aggregation function for numeric types is Sum not Average.)

## Additional learning materials

The following links provide additional information and tutorials on the skills used in this lab.


|                                       |                                                                        |
| ------------------------------------- | :--------------------------------------------------------------------: |
| **Description**                       |                               **Links**                                |
| Use Cognitive Services in Power BI | < https://docs.microsoft.com/en-us/power-bi/service-cognitive-services> |


[Next lab (Building Machine Learning in Power BI) >](./04-PowerBIAutoML.md)