---
title: ﻿Latch - Total Wait Time Rate alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "Latches are monitored to help identify performance bottlenecks."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_latch_totalwaittimerate.html
id: alarm_SQLServer_Latch_TotalWaitTimeRate
folder: ConnectSQLServer
---


Total latch wait time is recalculated every seconds as the number of milliseconds spent in wait time for that second. A high rate of increase in total wait time (by 1000 or more ms/s) raises the Latch - Total Wait Time Rate alarm.

When the alarm is raised there has been a high increase (ms/s) in the total wait time for latch requests. Open the **SQL Server \| SQL Activity Drilldown \| Locks page**. Refer to the Latches chart for details.

{% include links.html %}
