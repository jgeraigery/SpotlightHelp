---
title: Configure the Playback Database
summary: "Recent events and data collected in the recent past are stored in the Playback Database."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfg_ds_playbackdatabase.html
folder: SpotlightEnterprise
---



## Configure the Playback Database from the Spotlight Client

1. Click **Configure \| Diagnostic server**.
2. Select **Configure the Playback Database**.

In the Spotlight deployment the Spotlight Client communicates with the Spotlight Diagnostic Server which communicates with the Playback Database. One Playback Database is deployed per Spotlight Diagnostic Server.

## Select the Diagnostic Server

For federated Spotlight Diagnostic Server (Federate Diagnostic Servers) you will be prompted to select the Spotlight Diagnostic Server to configure. Each Spotlight Diagnostic Server has its own Playback Database.

## Configure the Playback Database

### Store playback data for n days

Specify the number of days to store data in the Playback Database. The number of days corresponds to the number of days of history available to Playback. The default is seven days. The minimum is two days.

### Instance

Specify the name of the SQL Server instance to host the playback database. Click the down arrow to list available instances.

{% include note.html content="Due to the size of the Playback Database, it is recommended that this database is not installed on a SQL Express instance. The Playback Database is not supported on High Availability Always On and mirrored databases. The Playback Database cannot be installed on SQL Server 2000." %}

### Authentication

Specify the authentication for Spotlight to use to connect to the Playback Database.

Select **Windows Authentication** (using Diagnostic Server credentials) to use the account that runs the Spotlight Diagnostic Server. Ensure this account is trusted by the SQL Server instance.

Alternatively, select **SQL Server authentication** and fill in the **User** and **Password** fields. The SQL Server user must have sufficient privileges to connect to the SQL Server instance hosting the Playback Database.

### Database

Specify the name of the Playback Database. By default the name is **SpotlightPlaybackDatabase**.

### Create

Click **Create** to create a new Playback Database. For more information, see Create Playback Database dialog.

{% include tip.html content="If you want your Playback Database to have a different name to the default, type a new name in the Database field before you click the **Create** button." %}


{% include links.html %}
