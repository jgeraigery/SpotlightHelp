---
title: Backup - Days Since Last Full Backup Alarm
summary: "The Backup - Days Since Last Full Backup Alarm becomes active when Spotlight detects that a full backup on the SQL Server database has never taken place or has not taken place in the last three days."
sidebar: c_sqlserver_sidebar
permalink: /sqlserver_alarm_backup_dayssincelastfullbackup/
---




﻿<note type="note">This alarm is not activated for missing backups of the tempdb database.</note>

When this alarm is raised, you should:

*  Check the date and time of the last backup from the <uicontrol>Databases</uicontrol> drilldown | <uicontrol>Databases</uicontrol> grid.</p></li>
*   Ensure you have appropriate backups of all necessary databases.</p></li>

To configure the Backup - Days since Last Full Backup alarm
<ol>
  <li>On the Spotlight home page, right-click the <uicontrol>Databases</uicontrol> button and select <uicontrol>Alarm Settings</uicontrol>.</li>
  <li>Select <uicontrol>Backup - Days since Last Full Backup</uicontrol>.</li>
  <li>Select <uicontrol>Override the default settings for the alarm</uicontrol>.</li>
</ol>

Use the Severity table to customize the number of days and the severity. By default 0 to 3 days is Normal. A High severity alarm is raised after 3 days. Click in the table to edit the values. Decimal values can be used to indicate portions of a day. For example you could edit the table to raise a high severity alarm after 3.5 (3 and a half) days or 3.25 (3 and a quarter days).

To exclude certain databases, in the lower right pane, in **Do not raise an alarm for certain values**, click the **values** link to add the name of the database you want excluded.


By default, the following databases are automatically excluded from the Backup alarms:

*   model
*   pubs
*   Northwind
*   AdventureWorks
*   QuestSoftware
*   QuestWorkDatabase
*   tempdb
