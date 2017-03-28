---
title: List the Default Reports
keywords: reports
summary: "The following Default Reports are shipped with Spotlight. These reports can be accessed via the Spotlight Client or deployed to SQL Server Reporting Services. The input parameters for the reports vary. Many of these reports require you to input the start date, end date and connection name."
sidebar: p_enterprise_sidebar
permalink: enterprise_display_reportsshipped.html
folder: SpotlightEnterprise
---



## All SQL Agent Jobs Report
Report on the SQL Agent Jobs defined on selected SQL Server instances.

## Audit Log
Spotlight maintains an audit log of user actions. This log is a historical record of who changed what configuration when. For more information, see [Log of user actions][enterprise_backend_logofuseractions].

## Custom Counters Report
Report on data collected for configured custom counters on selected SQL Servers or Windows hosts.

## Database Growth Report
Report for each database:

Chart | Description
------|------------
Data Growth Trend | Shows the following statistics for each database on the specified server: Data size, Data allocated.
Log Growth Trend | Shows the following statistics for the transaction log for each database on the specified server: Log size, Log allocated.

## Database Settings Report
Report on database settings for databases on the selected SQL Server instance.

## Deadlock List Report
Report on all lock requests resulting in a deadlock on the specified server for a set time period.

## Failed SQL Agent Jobs Report
Report on SQL Agent Jobs that failed during the selected time range.

## Server Alarms by Time Report
Report on alarms that have occurred on the specified server for a set time period.

## SQL Server Availability Report
Report on how available the given SQL Server instances have been over the specified time period. Include uptime statistics and the reason for any downtime periods (as per Spotlight alarms raised).

## SQL Server Blocking Report
Report on the lead blockers and the number of blocked processes over the selected time range. Report on the SQL statements that have caused the most blocking over the selected time range. Report on the SQL statements that have been blocked most often over the selected time range.

## SQL Server Configuration Report
Report for a selected SQL Server instance: SQL Server Properties, SQL Server Instance Configuration and SQL Server xp_MSver Results.

## SQL Server Connection Report
Report on connection statistics for: all connections, user connections, system connections, active connections, inactive connections or blocked connections.

## SQL Server Database Space Report
Use this report to identify databases nearing capacity.

## SQL Server Genral Statistics Report
Show statistics for the logged in users, batches, compiles and recompiles, cache hit ratios, page life expectancy and server memory used.

# SQL Server Health Database Files Report
Report on file statistics for each SQL Server database data and log file on the selected SQL Server instance.

## SQL Server Health Report
Show the following charts for the specified server for a set time period:

* Number of Logged on Users
* Batches, Compiles and Recompiles
* Buffer Cache Hit Ratio
* Procedure Cache Hit Ratio
* Page Life Expectancy
* Server Memory

## SQL Server Health Table Summary Report
Report on the largest tables (by size) on the selected SQL Server instances.

## SQL Server Index Summary Report
Report on the top indexes (based on index size) across the selected SQL Server instances.

## SQL Server Inventory Report
Report on the inventory of SQL Servers in the enterprise: version and edition, memory size and number of CPU.

## SQL Server IO Report
This report charts logical and physical IO over time for a selected SQL Server instance.

The Top 8 Database Files by File IO Reads Rate chart displays the file IO reads rate for the eight database files on the SQL Server that have the highest IO read rate over the selected time range.

The Top 8 Database Files by File IO Writes Rate chart displays the file IO writes rate for the eight database files on the SQL Server that have the highest IO write rate over the selected time range.

## SQL Server Job Duration Report
Report on the duration of all jobs run on the server.

## SQL Server Job Report
Report on all jobs run on the server. Identify failed jobs. Failed jobs are colored red.

## SQL Server Keyed Metric Report
Report on metric data for a selected statistic class and a selected statistic name (depending on the statistic class selected), for a selected instance over the selected time frame.

## SQL Server Large Databases Report
Report on the largest databases on the selected SQL Server instances.

## SQL Server Memory Report
Report on page life expectancy, procedure and buffer cache hit ratios and allocated memory sizes over time for a selected SQL Server instance.  

## SQL Server Metric Report
Report on metric data for a selected statistic class and a selected statistic name (depending on the statistic class selected), for a selected instance over the selected time frame.

## SQL Server Performance Summary Report
This report shows a performance summary of servers in the enterprise. How well have resources been utilized over the selected time frame?

## SQL Server Redundant and Reverse Indexes Report
Report on tables with redundant indexes on the selected SQL Server instance and tables with reverse indexes on the selected SQL Server instance.

## SQL Server Single Server Connection Report
Report on the number of connections to the selected SQL Server Instance over time (active, blocked, total, inactive, system and user connections).

## SQL Server Tables Missing Clustered Indexes or Primary Keys Report
Report on tables with no clustered indexes on the selected SQL Server instances and tables with no primary key on the selected SQL Server instances.

## SQL Server Transaction Daily Range Summary Report
Report on database transactions over time for a selected SQL Server Instance.

## SQL Server Transaction Monthly Summary Report
Report on monthly average and maximum transaction rates for each database on a selected SQL Server Instance.

## SQL Server Transaction Single Day Summary Report
Report on the daily transaction rate (per minute) for all databases on the selected instance for the selected date.

## SQL Server Wait Statistics Report
Report on the trends in wait types over time and wait statistics details for the selected SQL Server instance.

## Windows Configuration Report
Report on Operating System statistics, paging files, advanced performance options that have been configured and start-up options in use on the Windows server.

## Windows Disk Metric Report
Report on the bytes read per second, bytes written per second, IO's per second, percent busy, queue length, reads per second, service time, writes per second for the logical and physical disks on the selected server for the selected date.

## Windows Disk Space Report
Use this report to identify Windows server disks nearing capacity.

## Windows General Statistics Report

* Report on the amount of CPU being used by the SQL Server instance against the total amount being used by all Windows processes.
* Report on the combined rate at which all processors on the computer are switched from one thread to another.
* Report on the rate at which pages are being swapped in and out of memory.
* Report on the number of I/O requests that were queued for each logical disk.

## Windows Hardware Configuration Report
Provide information on the Windows server host, the processors of the Windows server host and the physical memory present in the Windows server host.

## Windows Server Health Report
This report shows the following charts for the specified server for a set time period:

* Total CPU Utilization
* Context Switches/Sec
* Paging Rate
* Network Bandwidth Utilization
* Disk Queue Length

## Windows Inventory Report
This report shows an inventory of Windows servers in the enterprise: operating system version and service pack, memory size and number of CPU.

## Windows Keyed Metric Report
Report on the metric data for a selected statistic class and a selected statistic name (depending on the statistic class selected), for a selected server over the selected time frame.

## Windows Memory Report
Report on Physical Memory (free and total), Virtual Memory (free and total) and Paging over time for a selected Windows server.

## Windows Metric Report
Report on the metric data for a selected statistic class and a selected statistic name (depending on the statistic class selected), for a selected server over the selected time frame.

## Windows Performance Summary Report
Report on the variation of performance over time in the areas of: CPU, Paging, Memory, Network Bytes and Queue Length.

## Windows Virtualization Summary Report
Report on the variation of CPU performance over time.

## Windows Virtualization Report
Report on CPU Percentage Analysis and CPU Utilization over time for a selected Windows server.


{% include links.html %}
