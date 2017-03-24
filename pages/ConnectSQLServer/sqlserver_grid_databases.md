---
title: Databases grid
last_updated: March 24, 2017
summary: "The Databases grid provides details of all databases in SQL Server."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_databases.html
id: Databases2.DatabasesGrid
folder: ConnectSQLServer
---


## How to use the grid

Select one or more databases in the Databases grid to show just those databases in **Database Details**. Press the **Shift** key to select a block of multiple databases or the **CTRL** key to select individual databases.

{% include inline_imageClient.html file="tb_drilldown_database_view.png" alt="Database view" %} | You can select the Database View as: **Overview, Transactions, Backup Status or Properties** to adjust the category of information displayed in the Databases grid.
{% include inline_imageClient.html file="tb_drilldown_databases_showhide.png" alt="show/hide" %} | Hide/Show the Databases grid.

{% include tip.html content="The **tempdb** database has its own drilldown. Click on tempdb to open the tempdb drilldown. Click on another cell in the tempdb row to select tempdb for **Database Details**." %}

{% include tip.html content="The # Tables column may not match the number of tables shown in the **Tables grid**. This is most evident when viewing table details for the tempdb database and is due to its dynamic nature." %}

## Overview

### Database Name

The name of the database.

### Status

The status of the database.

### Data MB

The total size of data files, measured in megabytes.

### Data Used MB

The total size of all data files in the database, measured in megabytes.

### Data Free MB

The amount of database space that is not allocated to the log, measured in megabytes.

### Log MB

The total size of the log, measured in megabytes.

### Log Used MB

The total size of all logs in the database, measured in megabytes.

### Log Free MB

The amount of log space that is not allocated to the log, measured in megabytes.

### # Tables

The number of tables, where table type=user, that exist on the database.

{% include note.html content="The # Tables column may not match the number of tables shown in the Tables grid. This is most evident when viewing table details for the tempdb database and is due to its dynamic nature." %}

### # File Groups

The number of file groups that exist on the database.

### Disks

The disk(s) where the database files reside.

### Last Full Backup

The date and time of the most recent full backup of the database. For more information change the Database View to Backup Status.

### Oldest Tran SPID

The system process ID of the session owning the oldest transaction in the database.

### Oldest Tran Start Time

The date and time at which the oldest transaction in the database began.

### Recovery

The recovery model for the database. For example, Simple, Bulk_Logged, or Full.

### dbid

The ID of the database.


## Transactions

### Database Name

The name of the database.

### Oldest Tran Start Time

The date and time at which the oldest transaction in the database began.

### Oldest Tran SPID

The system process ID of the session owning the oldest transaction in the database.

### dbid

The ID of the database.

{% include note.html content="To view the session details of a transaction, right-click a transaction in the grid and select **Session Details**. The session details for the selected transaction are displayed in the Session Details page of the SQL Activity drilldown." %}

## Backup Status

### Database Name

The name of the database.

### Status

The status of the database.

### Data MB

The total size of data files, measured in megabytes.

### Log MB

The total size of the log, measured in megabytes.

### Last Full Backup

The date and time of the most recent full backup of the database.

### Last Differential Backup

The date and time of the most recent differential backup of the database.

### Last Log Backup

The date and time of the most recent log backup of the database.

### dbid

The ID of the database.


## Properties

The **Properties** view displays the properties of the SQL Server databases on the system under diagnosis.

The columns in the Properties grid correspond to the data returned by the SQL Server **DatabasePropertyEx** function. For more information on these properties, see the **Transact-SQL Reference** section in Microsoft? SQL Server Books Online.




{% include links.html %}
