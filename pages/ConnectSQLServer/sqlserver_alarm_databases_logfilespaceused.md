---
title: Databases - Log File Space Used Alarm
last_updated: July 29, 2016
summary: "The Databases - Log File Space Used Alarm becomes active when a log in any database is in danger of filling."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_databases_logfilespaceused.html
id: Home.mcLogFiles.Fixed Log File Space Used.alarm
folder: ConnectSQLServer
---


It is raised when a log is almost full and the log files cannot automatically grow enough to relieve the problem. When the free space in a database's log file falls below a certain percentage of the log file's current total log size, the alarm is raised. Once a log fills completely, all attempts to update anything in that database will fail. This alarm takes into account the amount of free space currently within a fixed sized log file.

This alarm can occur when a log is filling up and all files in the log are approaching, or have reached, their MaxSize settings, or are defined with Auto Grow=No.

When this alarm is current, you should first look at reducing the log requirements by:

* On the SQL Server \| Databases Drilldown, check the Transactions information in the Databases grid to see if there is a very long running transaction for the database in question. To do this, from the View list select Transactions and then look at the Oldest Tran Start Time column.
* Backing up (or truncating) the log for the database in question. This removes any log entries that have been committed.

If you cannot identify or resolve the cause of the problem using the above tips, consider increasing the amount of space allocated to the logs by:

* Viewing the Transactions Logs grid on the Transaction Logs page on the SQL Server \| Databases Drilldown. The logs in danger are those that have a low Free Pct figure. Click the column heading to sort by this field. You can also identify the logs in danger by using the Transaction Log Growth chart, and looking for logs showing a high used percentage figure in the Transaction Logs grid.
* Viewing the Log Files page on the SQL Server \| Databases Drilldown. This displays the files that were identified as being in danger. Check for files with Auto Grow=No or those that have their current size nearing their MaxSize. If necessary, adjust the file growth parameters.

To increase the amount of space a log can use:

* Adjust the file growth parameters of at least one log file in this database so that it can grow. Make sure the Auto Grow setting is on, and that the MaxSize setting is larger than the current file size.

## Configuration

You can configure this alarm to ignore certain values. For more information, see Do not alarm for certain values.
You can configure different alarm severities for specific log files. For more information, see Configure an alarm.

## Examples

This alarm is raised in the following circumstances:

* The log is 95% full, and all log files have either defined Auto Grow=No or have reached their MaxSize settings.
This alarm is not raised in the following circumstances:

* All files in the log are set to prevent growth, and the log is 5% full.

{% include links.html %}
