---
title: Poor Performance Health Alarm
last_updated: July 29, 2016
summary: "The database is spending too much time waiting for bottlenecks such as locks and latches."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_poorperformancehealth.html
id: alarm_poorperformancehealth
folder: ConnectSQLServer
---


Note that this alarm uses a score averaged over 30 minutes to smooth out any rapid movement.

If a database devotes most of its time to CPU and I/O and has a low single-block read latency,
it will obtain a performance-health rating of 80% or more, which is considered healthy.

For more information on your database's performance health see the SQL Server \| Performance Health Drilldown.



{% include links.html %}
