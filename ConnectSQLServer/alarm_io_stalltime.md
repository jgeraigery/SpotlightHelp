---
title: ﻿I/O Stall Time Alarm
summary: "The I/O Stall Time alarm becomes active when the average I/O wait time for any database file exceeds a threshold. This value is taken over a specific number of background collections."
sidebar: c_sqlserver_sidebar
permalink: /sqlserver_alarm_io_stalltime/
---


Sustained high I/O wait times are a good indicator that you have a disk subsystem bottleneck and that I/O device service times will be degraded.

## When the alarm is raised

Look at the I/O page on the SQL Server \| Diagnostics Drilldown to see what is contributing to I/O consumption. If SQL Server is contributing to I/O consumption look at the following:

* The I/O by File page on the SQL Server \| SQL Activity Drilldown to see which files are waiting on I/O operations. High rates of wait on log files may indicate that the device on which the log file resides is not able to keep up.
* The Sessions page on the SQL Server \| SQL Activity Drilldown to see which SQL Server sessions are generating high amounts of disk activity. The SQL and the query plan are available for further analysis by clicking a row in the grid.
* The SQL Server \| Wait Statistics Drilldown. Looking at the top statements by Avg Logical Reads/Writes shows SQL that may be doing large amounts of logical I/O. This logical I/O may result in unnecessary physical I/O.

## Configuration

You can configure this alarm to ignore certain values. For more information, see Do not alarm for certain values.
You can configure different thresholds for specific database files. For more information, see Configure an alarm.
