---
title: ﻿Backup - Minutes Since Last Log Backup alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "The Backup - Minutes Since Last Log Backup Alarm becomes active when Spotlight detects that a log backup of the SQL Server database has never taken place or has not taken place in the last 120 minutes. Log backups are useful in keeping transaction logs in reasonable size."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_backup_minutessincelastlogbackup.html
id: alarm_backup_minutessincelastlogbackup
folder: ConnectSQLServer
---



{% include note.html content="This alarm is not activated for missing backups of the **tempdb** database." %}

When this alarm is current:

* Check the date and time of the last backup. You will find this information on the **Databases** drilldown in the **Databases** grid. Set the **Database View** to **Backup Status**.
* Ensure you have appropriate backups of all necessary databases.


To exclude certain databases from the Backup - Minutes Since Last Log Backup Alarm:

1.  Open the Spotlight Client.
2.  On the Spotlight Overview page, right-click the Databases button and select **Alarm Settings**.
3.  Select **Backup - Minutes Since Last Log Backup**.
4.  Select **Override the default settings for the alarm**.
5.  In the lower right pane, in **Do not raise an alarm for certain values**, click the **values** link to add the name of the database you want excluded.

By default, the following databases are automatically excluded from the Backup alarms:

*  model
*  pubs
*  Northwind
*  AdventureWorks
*  QuestSoftware
*  QuestWorkDatabase
*  tempdb

{% include links.html %}
