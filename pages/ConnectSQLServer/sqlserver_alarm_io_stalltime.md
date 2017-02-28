---
title: ﻿I/O Stall Time alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "The I/O Stall Time alarm becomes active when the average I/O wait time for any database file exceeds a threshold. This value is taken over a specific number of background collections."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_io_stalltime.html
id: IO Wait Time.Alarm
folder: ConnectSQLServer
---


Sustained high I/O wait times are a good indicator that you have a disk subsystem bottleneck and that I/O device service times will be degraded.

When the alarm is raised look at the **SQL Server \| Wait Events drilldown \| IO Category** to see what is contributing to I/O consumption. If SQL Server is contributing to I/O consumption look at the following:

* The **SQL Server \| SQL Activity drilldown \| I/O by File page** to see which files are waiting on I/O operations. High rates of wait on log files may indicate that the device on which the log file resides is not able to keep up.
* The **SQL Server \| SQL Activity drilldown \| Sessions page** to see which SQL Server sessions are generating high amounts of disk activity. Select a session; the Statement tab for a selected session provides for further analysis.
* The **SQL Server \| Wait Statistics drilldown**. Looking at the top statements by Avg Logical Reads/Writes shows SQL that may be doing large amounts of logical I/O. This logical I/O may result in unnecessary physical I/O.

{% include note.html content="From the Spotlight Client you can configure this alarm to ignore certain values. You can configure different thresholds for specific database files." %}


{% include links.html %}
