---
title: Data display and collection problems
last_updated: July 29, 2016
summary: "Known issues where unknown values or missing values or too many 0 values are shown on the SQL Server Overview page or its drilldowns."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_troubleshoot_datadisplaycollect.html
folder: ConnectSQLServer
---

## SQL Server \| Wait Events Drilldown

\<Unknown\> entries in the All Workload \| Database tree and SQL not available entries in the All Workload \| Statement tree may mean:

* SQL Server did not add the metric to the event. Perhaps the metric was too difficult to get or the metric was no longer available.
* The event was created by a process that does not have that metric. Typically these are internal SQL Server processes.

## SQL Server performance counters

When SQL Server performance counters are missing, Spotlight will not be able to collect the data it requires, and will display "0" for many of its components. Most obvious will be the Memory icons on the SQL Server \| Overview page, which will show 0 MB of memory used by SQL Server. Also, many of the flows on the Overview page will show no activity, and many drilldowns will show incomplete information.

Spotlight Enterprise uses sys.dm_os_performance_counters (sysperfinfo for SQL Server 2000) to retrieve data for many of its displays. In some rare cases, this table may not contain information.

When SQL Server performance counters are missing, Spotlight will not be able to collect the data it requires, and will display "0" for many of its components. Most obvious will be the Memory icons on the SQL Server \| Overview page, which will show 0 MB of memory used by SQL Server. Also, many of the flows on the Spotlight Overview page will show no activity, and many drilldowns will show incomplete information.

Spotlight Enterprise raises the Missing SQL Performance Counters Alarm shortly after connecting if it detects that the sysperfinfo or sys.dm_os_performance_counters table contains no data.

### Verify the sys.dm_os_performance_counters table contains no data

Run the following SQL in the appropriate version of SQL Server Management Studio for SQL Server. If this query returns no records, then your SQL Server performance counters are missing. Spotlight Enterprise will not be able to operate correctly.

```
select * from sys.dm_os_performance_counters
```

For SQL Server 2000 run the following SQL in Query Analyzer (select * from master..sysperfinfo)

### Enable performance counters

Sometimes, for a variety of reasons, the SQL Server Performance Monitor counters will not show up as they should. Often, but not always, this problem can be fixed by following these steps.

1. At the command prompt, type the following:
    unlodctr.exe MSSQLServer

2. Then type:
    lodctr.exe <SQL Server path>\\binn\\sqlctr.ini

3. Reboot the server.

### More information

Open the SQL Server Knowledge Base at http://msdn.microsoft.com.


## Errors on the SQL Server \| SQL Activity Drilldown \| Sessions page

If errors are displayed on the SQL Activity drilldown \| Sessions page then install SQL Server Management Tools on the Spotlight Diagnostic Server host. The version of SQL Server Management Tools required is dependent on the most current version of SQL Server monitored. When monitoring SQL Server 2012, SQL Server 2012 Management Tools are required.

## No data on the SQL Server \| Support Services Drilldown \| Service Status page

The Spotlight log in to the SQL Server instance (Monitored connections) must be a member of the sysadmin server role to view the data on this page.


{% include links.html %}
