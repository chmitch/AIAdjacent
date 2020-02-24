# Overview

This workshop is designed to give participants familiar with Power BI and Business Intelligence and introduction to Artificial Intelligence and Machine Learning capabilies.  The topics we introduce are designed to help participants identify areas where they can gain additional value out of their investment in business intelligence technologies like Powr BI.  Furthermore, this workshop is designed to give participants hands on experience with the technologies.

The format we're following for this is similar to other initiatives like OpenHack and What the Hack.  The material is intended to be light on presentations and heavy on hands on experience.  The participants will spend the majority of their time working on challenges.  The challenges are not designed to be hands on labs, but rather a business problem with success criteria.  The focus here is encouraging the participants to think about what they're doing and not just blindly following steps in a lab.

## Presentation content

1. [Welcome & Introduction](./Presentations/P01%20-%20Welcome%20&%20Introduction.pptx) - This presentation sets the stage for the event and reviews the topics and ajenda.
1. [Intro to Power BI dataflows](./Presentations/P02%20-%20Intro%20to%20Power%20BI%20dataflows.pptx) - AI and ML features in Power BI are activated via dataflows.  This deck introduces dataflows concepts.  (Note: this presentation is intended to be delivered in advance of Challenge 2.)
1. [Intro to Cognitive Services](./Presentations/P03%20-%20Intro%20to%20Cognitive%20Services.pptx) - Power BI makes it simple to leverage some Azure Cognitive services.  This deck introduces Azure Cognitive Services in general and discusses the few cognitive services available in Power BI Dataflows.  (Note: this presentation is intended to be delivered in advance of Challenge 3.)
1. [Machine Learning with Power BI](./Presentations/P04%20-%20Machine%20Learning%20with%20Power%20BI.pptx) - Power BI Auto ML makes it easy to train models with data in your dataflow.  This presentation introduces core machine learning concepts and workflow.  (Note: this presentation is intended to be delivered in advance of Challenge 4.)
1. [??](./Presentations/P05-??.pptx) - ??  (Note: this presentation is intended to be delivered in advance of Challenge 5.)

## Creation via build script considerations.

If you want to bypass the setup process you can actually build the Adventure Works database from scratch using the data in the "Sourcefiles" direcory.  This path includes all the source csv files and scripts to build the database.  The basic steps are as follows.

1.  You must copy all the .csv files to a blob storage container.
1.  You must generate a sas key for the storage container.
1.  You must alter the script to include the appropriate sas key (credential creation)
1.  You must execute the create script in SQL-CMD mode.

The "Scripts" directoty contains additional content that is held separate as they are departures from the "stock" AdventureWorksDW schema.
