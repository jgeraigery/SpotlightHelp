---
title: Configure the Spotlight Statistics Repository
summary: "The Spotlight Diagnostic Server (optionally) stores data for long term history for reporting and trending in the Spotlight Statistics Repository."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfg_ds_ssr.html
folder: SpotlightEnterprise
---



## Open this screen from the Spotlight Client

1. Click **Configure \| Diagnostic server**.
2. Select **Configure the Spotlight Statistics Repository**.

## Select the Diagnostic Server

For federated Spotlight Diagnostic Server (Federate Diagnostic Servers) you will be prompted to select the Spotlight Diagnostic Server to configure. Each Spotlight Diagnostic Server is independently configured for the Spotlight Statistics Repository.

## Configure the Spotlight Statistics repository

### Enable use of the Spotlight Statistics Repository

Select to store data in the Spotlight Statistics Repository. Clear to stop storing (not store) data in the Spotlight Statistics Repository.

### Instance

The name of the SQL Server instance to host the Spotlight Statistics Repository. Click the down arrow to list available instances.

Note: Due to the size of the Spotlight Statistics Repository, it is recommended that this database is not installed on a SQL Express instance. The Spotlight Statistics Repository is not supported on High Availability Always On and mirrored databases. The Spotlight Statistics Repository cannot be installed on SQL Server 2000.

### Authentication

The authentication for Spotlight to use to connect to the Spotlight Statistics Repository.

Select **Windows Authentication (using Diagnostic Server credentials)** to use the account that runs the Spotlight Diagnostic Server. Ensure this account is trusted by the SQL Server.

Alternatively, select **SQL Server authentication** and fill in the User and Password fields. The SQL Server user must have sufficient privileges to connect to the SQL Server instance hosting the Spotlight Statistics Repository.

### Database

The name of the Spotlight Statistics Repository.

### Create

Click **Create** to create a new Spotlight Statistics Repository. For more information, see Create Spotlight Statistics Repository dialog.

### Store alarms in the repository for … days

The number of days to store alarm data in the repository, by default 30.



{% include links.html %}
