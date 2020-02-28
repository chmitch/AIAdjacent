# Overview

This workshop is designed to give participants familiar with Power BI and Business Intelligence and introduction to Artificial Intelligence and Machine Learning capabilies.  The topics we introduce are designed to help participants identify areas where they can gain additional value out of their investment in business intelligence technologies like Powr BI.  Furthermore, this workshop is designed to give participants hands on experience with the technologies.

The format we're following for this is similar to other initiatives like OpenHack and What the Hack.  The material is intended to be light on presentations and heavy on hands on experience.  The participants will spend the majority of their time working on challenges.  The challenges are not designed to be hands on labs, but rather a business problem with success criteria.  The focus here is encouraging the participants to think about what they're doing and not just blindly following steps in a lab.

## Timings

The following is expected timing for a standard delivery.

|                                            |                                                                                                                                                       |
| ------------------------------------------ | :---------------------------------------------------------------------------------------------------------------------------------------------------: |
| **Topic** |  **Duration**  |
| Presentation 1:  Welcome and Introduction  | 30 mins |
| Challenge 1: Enviroment Setup | 30 mins|
| Presentation 2: Intro to Power BI dataflows | 30 mins|
| Challenge 2: Working with Data in Power BI | 45 mins |
| Presentation 3: Intro to Cognitive Services | 30 mins |
| Challenge 3: Working with Cognitive Services | 45 mins |
| Presentation 4: Machine Learning with Power BI | 30 mins |
| Challenge 4: Building Machine Learning in Power BI | 45 mins |
| Presentation 5: Azure Machine Learning Studio | 30 mins |
| Challenge 5: Building Models in Azure Machine Learning Designer | 60 mins |
| Challenge 6: Building Machine Learning in Azure Machine Learning Auto ML| 45 mins |
| (Optional) Challenge 7: Building Machine Learning in Azure Machine Learning Notebooks | 45 mins |


## Content

In order to deliver this hackshop there is a variety of supporting content.   This content is indexed below.

### Backup

* [AdventureWorksDW](./Backup/AdventureWorksDW.bacpac) - This is a .bacpac file of the AdventureWorksDW with some slight modifications to support this exercise.  While you could recreate this database from scratch using this content in the Sourcefiles location, this is provided to save you time.

### Presentation content

1. [Welcome & Introduction](./Presentations/P01%20-%20Welcome%20&%20Introduction.pptx) - This presentation sets the stage for the event and reviews the topics and ajenda.
1. [Intro to Power BI dataflows](./Presentations/P02%20-%20Intro%20to%20Power%20BI%20dataflows.pptx) - AI and ML features in Power BI are activated via dataflows.  This deck introduces dataflows concepts.  (Note: this presentation is intended to be delivered in advance of Challenge 2.)
1. [Intro to Cognitive Services](./Presentations/P03%20-%20Intro%20to%20Cognitive%20Services.pptx) - Power BI makes it simple to leverage some Azure Cognitive services.  This deck introduces Azure Cognitive Services in general and discusses the few cognitive services available in Power BI Dataflows.  (Note: this presentation is intended to be delivered in advance of Challenge 3.)
1. [Machine Learning with Power BI](./Presentations/P04%20-%20Machine%20Learning%20with%20Power%20BI.pptx) - Power BI Auto ML makes it easy to train models with data in your dataflow.  This presentation introduces core machine learning concepts and workflow.  (Note: this presentation is intended to be delivered in advance of Challenge 4.)
1. [Azure Machine Learning Studio](./Presentations/P05%20-%20Azure%20Machine%20Learning%20Studio.pptx) - When you hit the limits of the native capabilities of Power BI, you'll start building Machine Learning and Artifical Intelligence solutions in Azure Machine Learning.  The presentation introducse core concepts and capabilities in Azure Machine Learnging (Note: this presentation is intended to be delivered in advance of Challenges 5 - 7.)

### Scripts

These are the supplemental script files that go beyond the standard AdventureWorksDW database.  These are provided here in case you happen to already have a copy of AdventureWorksDW and just want to modify it to work with the challenges.

1. [Create BikeBuyerTraining View.sql](./Scripts/Create%20BikeBuyerTraining%20View.sql) - This creates a view that joins customers with their buying history which is our source for training our classification models.
2. [Create Customers View.sql](./Scripts/Create%20Customers%20View.sql) - This creates a view to simplify the creation of the dataflows.   The customers data in the default model is spread between dimCustomer and dimGeography.  This view flattens those objects into a single datset.
3. [Create Products View.sql](./Scripts/Create%20Products%20View.sql) - Like the customers view, this view simplifies Products which is spread across dimProduct, dimProductSubCategory, and dimProductCategory, and simplifies this into a single dataset.
4. [CreateAdventureWorksDW.sql](./Scripts/CreateAdventureWorksDW.sql) - this is a slighly modified version of the adventure works creation script modified for running in SQL Azure and restoring from csv files in azure blob storage.

### Database Setup Options 1 & 2

These are  our preferred method as it uses the bacpac that is convenitently stored in azure blob storage already.  These methods are  spelled out in detail in [Challenge 1](././Student/01-Setup.md).

### Database Setup Option 3

If you're a masochist and want to bypass the setup process you can actually build the Adventure Works database from scratch using the data in the "Sourcefiles" direcory.  This path includes all the source csv files and scripts to build the database.  The basic steps are as follows.

1.  You must copy all the .csv files to a blob storage container.
1.  You must generate a sas key for the storage container.
1.  You must alter the script to include the appropriate sas key (credential creation)
1.  You must execute the create script in SQL-CMD mode.

The "Scripts" directoty contains additional content that is held separate as they are departures from the "stock" AdventureWorksDW schema.


### Ideas for other Challenges (Punch List)

This area is for us to keep a running list of things we would like to incorporate into the Core or Optional challenges.  Please contact Chris Mitchell (repo owner) if you would like to pick one of these to work on, or want to add a new one yourself.  Help and collaboration are always welcome.

1. An adjunct lab to AML Designer to add in normalization, comparing other algorithms, etc. to hit a higher accuracy
2. An adjunct lab to AML AutoML to add in timeseries forecasting
3. An optional lab to AML Notebooks for time series forecasting
4. Pick an AML tool to dive into Model Transparency and Interpretability 
   
