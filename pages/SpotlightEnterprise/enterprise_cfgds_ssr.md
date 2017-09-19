---
title: Configure the Spotlight Statistics Repository
summary: "Data for long term history for reporting and trending is stored in the Spotlight Statistics Repository. By default, use of the Spotlight Statistics Repository is disabled. Data for long term history for reporting and trending is only stored when the use of the Spotlight Statistics Repository is enabled and the Spotlight Statistics Repository is appropriately configured."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgds_ssr.html
id: 703
folder: SpotlightEnterprise
---



## Configure the Spotlight Statistics Repository from the Spotlight Client

1. Click **Configure \| Diagnostic server**.
   {% include imageClient.html file="tb_config_dserver.png" alt="Configure Diagnostic Server" %}
2. Select **Configure the Spotlight Statistics Repository**.

## Select the Diagnostic Server

If the Spotlight Diagnostic Server is federated you will be prompted to select the Spotlight Diagnostic Server to configure. Please configure each Spotlight Diagnostic Server in the federation (one at a time) independent of each other. You can direct each Spotlight Diagnostic Server to store data in the same Spotlight Statistics Repository (so one Spotlight Statistics Repository for the whole federation), but you don't have to.

## Configure the Spotlight Statistics repository

### Enable use of the Spotlight Statistics Repository

Select **Enable use of the Spotlight Statistics Repository** to store data in the Spotlight Statistics Repository.

If **Enable use of the Spotlight Statistics Repository** is not selected then Spotlight will stop storing (not store) data in the Spotlight Statistics Repository.

### Instance

Specify the name of the SQL Server instance to host the Spotlight Statistics Repository. Click the down arrow to list available instances.

{% include note.html content="Due to the size of the Spotlight Statistics Repository, it is recommended that this database is not installed on a SQL Express instance. The Spotlight Statistics Repository is not supported on High Availability Always On and mirrored databases. The Spotlight Statistics Repository cannot be installed on SQL Server 2000." %}

### Authentication

Specify the authentication for Spotlight to use to connect to the Spotlight Statistics Repository.

Select **Windows Authentication (using Diagnostic Server credentials)** to use the account that runs the Spotlight Diagnostic Server. Ensure this account is trusted by the SQL Server.

Alternatively, select **SQL Server authentication** and fill in the **User** and **Password** fields. The SQL Server user must have sufficient privileges to connect to the SQL Server instance hosting the Spotlight Statistics Repository.

### Database

Specify the name of the Spotlight Statistics Repository.

### Create

Click **Create** to create a new Spotlight Statistics Repository. This opens the [Create Spotlight Statistics Repository dialog][enterprise_cfgds_ssr_create].

### Store alarms in the repository for … days

Specify the number of days to store alarm data in the repository, by default 30.

{% include note.html content="It is highly recommended that regular maintenance is performed to maintain efficient data retrieval. Now that you have configured the Spotlight Statistics Repository, the next step is to [Configure the database maintenance schedule][enterprise_cfgds_databasemaintenanceschedule]." %}



{% include links.html %}
