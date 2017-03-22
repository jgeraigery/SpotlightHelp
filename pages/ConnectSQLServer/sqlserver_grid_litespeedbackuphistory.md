---
title: LiteSpeed Backup History grid
last_updated: July 29, 2016
summary: "The LiteSpeed backups grid shows the history of your LiteSpeed backups."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_litespeedbackuphistory.html
id: Databases2_LiteSpeed.LiteSpeedGrid
folder: ConnectSQLServer
---
 
## Requirements

* Designed for use with LiteSpeed for SQL Server versions 7.1 and above.
* Requires that LiteSpeed be installed and operational on your SQL Server network.


## About the LiteSpeed backups grid

Select database(s) that have been backed up using LiteSpeed from the **Databases** grid. Use the SHIFT or CTRL key to select multiple databases.

* When the selected database has not been backed up with LiteSpeed, **No Data** is shown.
* Data is extracted from **LiteSpeedLocal**, the repository local to the selected database instance.
* For more information on LiteSpeed, please refer to its documentation.


## The grid shows:

### Database Name

The name of the selected database.

### Activity Type

The LiteSpeed Activity Type (the type of backup job).

### Start Time

The start time of this LiteSpeed backup job.

### Finish Time

The time this LiteSpeed backup job completed execution.

### Status

The status of the activity: in progress, completed, failed or warning.

### % complete

While the backup job is executing, indicates how close the job is to completion. Shows 100% when the job has finished executing - check the **Status** value as it may be **completed**, **failed** or **warning**.

### Detail

The command call to the LiteSpeed Engine to start the activity.

### Error Message

If there was a problem with this backup (an error), the LiteSpeed error message.

### Warning Message

If there was a problem with this backup (with warning), the LiteSpeed warning message.

### Result Message

A report on the completion of this LiteSpeed backup job.

### Database Size

The size of the backed up database.

### Native Size

The native size of the LiteSpeed backup.

### Backup Size

The size of the LiteSpeed backup.

### Backup Time

The time (in seconds) taken by LiteSpeed to backup the database.

### Attached Native Size

The size of attached files (uncompressed).

### Attached Backup Size

The size of attached files (compressed).

### Attached Backup Time

The time (in seconds) taken by LiteSpeed to backup the attached files.

### Last Backup Time

The date and time this database was last backed up.

### UserName

This LiteSpeed job ran under the Windows domain account with this username.

### Activity Description

The LiteSpeed activity description.



{% include links.html %}
