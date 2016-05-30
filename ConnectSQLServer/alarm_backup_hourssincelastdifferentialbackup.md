---
title: ﻿Backup - Hours Since Last Differential Backup Alarm
summary: "The Backup - Hours Since Last Differential Backup Alarm becomes active when Spotlight
 detects that a differential backup of the SQL Server database has never taken place or has not taken place in the last 24 hours."
sidebar: c_sqlserver_sidebar
permalink: /sqlserver_alarm_backup_hourssincelastdifferentialbackup/
---




Differential backups are important for mission-critical databases.

<note type="note">This alarm is not activated for missing backups of the <uicontrol>tempdb</uicontrol> database.</note>
</context>

<steps-unordered>
<stepsection>When this alarm is current, you should:</stepsection>
<step><cmd>Check the date and time of the last backup.</cmd>
<info>You will find this information on the <uicontrol>Databases</uicontrol> drilldown in the <uicontrol>Databases</uicontrol> grid.
Set the <uicontrol>Database View</uicontrol> to <uicontrol>Backup Status</uicontrol>.</info></step>
<step><cmd>Ensure you have appropriate backups of all necessary databases.</cmd></step>
</steps-unordered>
<postreq>


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
