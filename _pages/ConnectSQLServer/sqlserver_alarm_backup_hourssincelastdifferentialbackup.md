---
title: ﻿Backup - Hours Since Last Differential Backup Alarm
summary: "The Backup - Hours Since Last Differential Backup Alarm becomes active when Spotlight
 detects that a differential backup of the SQL Server database has never taken place or has not taken place in the last 24 hours."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_backup_hourssincelastdifferentialbackup
folder: ConnectSQLServer
---




Differential backups are important for mission-critical databases.

{% include note.html content="This alarm is not activated for missing backups of the **tempdb** database." %}


When this alarm is current, you should:

*  Check the date and time of the last backup.<br>You will find this information on the **Databases** drilldown in the **Databases** grid. Set the **Database View**to **Backup Status**.
*  Ensure you have appropriate backups of all necessary databases.

To exclude certain databases from the Backup - Hours Since Last Differential Backup Alarm:

1.  On the Spotlight home page, right-click the Databases button and select **Alarm Settings**.
2.  Select **Backup - Hours Since Last Differential Backup**.
3.  Select **Override the default settings for the alarm**.
4.  In the lower right pane, in **Do not raise an alarm for certain values**, click the **values** link to add the name of the database you want excluded.

By default, the following databases are automatically excluded from the Backup alarms:

*  model
*  pubs
*  Northwind
*  AdventureWorks
*  QuestSoftware
*  QuestWorkDatabase
*  tempdb
