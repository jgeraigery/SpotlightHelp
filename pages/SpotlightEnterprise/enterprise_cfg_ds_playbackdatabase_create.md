---
title: Create Playback Database dialog
summary: "This dialog is opened from Configure the Playback Database on request to create a new Playback Database."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfg_ds_playbackdatabase_create.html
folder: SpotlightEnterprise
---



## Authentication

This authentication is used to create the Playback Database. Ensure this authentication has permission to create databases on the SQL Server instance.

### Windows authentication (Client)

Select **Windows authentication** to create the Playback Database using the Windows credentials of the logged in user on the Spotlight Client.

### SQL Server authentication

Alternatively, select **SQL Server authentication** and fill in the **User** and **Password** fields. This SQL Server user must have permission to create databases on the SQL Server instance.


## Configure playback data and log files...

Click **Configure playback data and log files** to change the default name of the playback database or the location of the corresponding data and log files. By default, the playback and data log files are created in the same location as those of the model database.

### Database

The name of the database.

### Data File

The name and location of the corresponding data file. The file name is automatically updated when you change the name of the Playback Database. Update the file name and location, if required.

Click the …button to locate the data file.

### Log File

The name and location of the corresponding log file. The file name is automatically updated when you change the name of the Playback Database. Update the file name and location, if required.

Click the …button to locate the log file.




{% include links.html %}
