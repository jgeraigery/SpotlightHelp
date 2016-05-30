---
title: ﻿Missing SQL Performance Counters Alarm
summary: "Spotlight on SQL Server uses the SQL Server virtual table sysperfinfo to retrieve data for many of its displays. In some rare cases, this table may not contain information. When this is the case, Spotlight on SQL Server will not be able to collect the data it requires, and will display '0' for many of its metrics. Most obvious will be the Memory icons on the home page, which will show 0 MB of memory used by SQL Server. Also, many of the flows on the home page will show no activity, and many drilldowns will show incomplete information."
sidebar: c_sqlserver_sidebar
permalink: /sqlserver_alarm_missingsqlperformancecounters/
---


﻿


Spotlight on SQL Server raises an informational alarm shortly after connecting if it detects that the sysperfinfo table contains no data.

You can confirm the existence of this problem by running the following SQL in SQL Server Management Studio for SQL Server 2005 or later:

select * from sys.dm_os_performance_counters

or by running the following SQL in Query Analyzer for SQL Server 2000:

select * from master..sysperfinfo

If this query returns no records, then your SQL Server performance counters are missing and Spotlight on SQL Server will not be able to operate correctly.

Sometimes, for a variety of reasons, the SQL Server Performance Monitor counters will not show up as they should. Often, but not always, this problem can be fixed by following these steps:

At the command prompt, type the following:

unlodctr.exe MSSQLServer

Then type:

lodctr.exe \binn\sqlctr.ini

Reboot the server.
If the Analysis Services counters can't be found use the following:

At the command prompt, type the following:

unlodctr.exe MSSQLServerOLAPService

Then type:

lodctr.exe \binn\msmdctr.ini

Reboot the server.
If an unexpected error message is displayed, look it up at msdn.microsoft.com. Note, this tip is for non-clustered SQL Servers only.
