---
title: ﻿Databases - Log Flush Wait Time Alarm
last_updated: July 29, 2016
summary: "The Databases - Log Flush Wait Time alarm becomes active when the duration of the last log flush for a database exceeds a threshold."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_databases_logflushwaittime.html
id: mcLogFilesMaximum Log Flush Wait Time.Alarm
folder: ConnectSQLServer
---


As users make modifications to SQL Server databases, SQL Server records these changes in a memory structure called the Log Cache. Each SQL Server database has its own log cache.

When a user transaction is committed (either explicitly via a COMMIT statement, or implicitly), SQL Server writes all changes from the Log Cache out to the log files on disk. This process is termed a log flush. The user that issued the commit must wait until the log flush is complete before they can continue. If the log flush takes a long time, this will degrade the user's response time.

Note that Spotlight Enterprise checks the log flush wait time for the last log flush performed for each database. If a database has a slow log flush, and then has no update activity (and therefore no more log flushes) for a long time, Spotlight Enterprise will still continue to report this as an alarm until another log flush is performed for that database.

## When the alarm is raised

* On the SQL Server \| Databases Drilldown \| Summary page review the Log Flush Wait Time counter in the Database History graph. The database with the high graph values is the one experiencing the problem. If a database has a consistently high value that never changes, run SQL command CHECKPOINT on that database to force another log flush and check the value in Spotlight Enterprise again.
* Select the Transaction Logs tab on the SQL Server \| Databases Drilldown to find the disks on which the log for this database resides.
* For the connection to the Windows server host, select the Logical Disk Activity page on the Windows Server \| Disks Drilldown to check I/O service rates for the disks in question.
* Consider moving the log files to disks that support fast write activity (for example, a fast RAID controller with write-back caching enabled).
* Consider moving log files off RAID-5 devices as these are optimized for read activity, and log files generate mainly write activity.

## Configuration

* You can configure this alarm to ignore certain values. For more information, see Do not alarm for certain values.
* You can configure different alarm severities for specific databases. For more information, see Configure an alarm.

{% include links.html %}
