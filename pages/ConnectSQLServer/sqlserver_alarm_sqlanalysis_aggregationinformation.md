---
title: SQL Analysis - Aggregation Information Alarm
last_updated: July 29, 2016
summary: "The SQL Analysis - Aggregation Information alarm is raised to indicate that some SQL statements have been discarded during the collection of SQL Analysis data."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_sqlanalysis_aggregationinformation.html
id: sqlactivity_sqlanalysis.alarm
folder: ConnectSQLServer
---


The process of collecting SQL Analysis data limits the size of the aggregation of SQL statements returned from the monitored SQL Server instance to protect against high memory consumption by the Spotlight Diagnostic Server. When an event is collected from the SQL Server instance that causes the aggregation to grow beyond this limit, this alarm is raised.

To allow Spotlight to collect more SQL Analysis data without discarding SQL statements (and raising this alarm), consider increasing the value of the Aggregate the top n SQL statements option on the Advanced tab of the SQL Analysis Options dialog. Increasing this value is likely to increase Spotlight Diagnostic Server memory usage so adjusting this value to more than the default of 200 is not recommended. For more information, see Configure \| SQL Analysis.

You can also reduce the number of SQL Server events being aggregated by increasing the collection filter settings.

{% include links.html %}
