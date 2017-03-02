---
title: List the Default Reports
keywords: reports
summary: "The following Default Reports are shipped with Spotlight. These reports can be accessed via the Spotlight Client or deployed to SQL Server Reporting Services. The input parameters for the reports vary. Many of these reports require you to input the start date, end date and connection name."
sidebar: p_enterprise_sidebar
permalink: enterprise_display_reportsshipped.html
folder: SpotlightEnterprise
---




## Database Growth Report
The report contains the following charts for each database:

Chart | Description
------|------------
Data Growth Trend | Shows the following statistics for each database on the specified server: Data size, Data allocated.
Log Growth Trend | Shows the following statistics for the transaction log for each database on the specified server: Log size, Log allocated.

## Deadlock List
The report shows all lock requests resulting in a deadlock on the specified server for a set time period.

## SQL Server Configuration Report
This report shows for a selected SQL Server instance: SQL Server Properties, SQL Server Instance Configuration and SQL Server xp_MSver Results.

## SQL Server Connection Report
The report shows connection statistics for: all connections, user connections, system connections, active connections, inactive connections or blocked connections.

## SQL Server Database Space
Use this report to identify databases nearing capacity.

## SQL Server Health Report
The Server Health report shows the following charts for the specified server for a set time period:

* Number of Logged on Users
* Batches, Compiles and Recompiles
* Buffer Cache Hit Ratio
* Procedure Cache Hit Ratio
* Page Life Expectancy
* Server Memory

## SQL Server IO Report
This report charts logical and physical IO over time for a selected SQL Server instance.

The Top 8 Database Files by File IO Reads Rate chart displays the file IO reads rate for the eight database files on the SQL Server that have the highest IO read rate over the selected time range.

The Top 8 Database Files by File IO Writes Rate chart displays the file IO writes rate for the eight database files on the SQL Server that have the highest IO write rate over the selected time range.

## SQL Server Inventory
This report shows an inventory of SQL Servers in the enterprise: version and edition, memory size and number of CPU.

## SQL Server Job Report
This report shows all jobs run on the server. Identify failed jobs. Failed jobs are colored red.

## SQL Server Keyed Metric Report
This report shows metric data for a selected statistic class and a selected statistic name (depending on the statistic class selected), for a selected instance over the selected time frame.

## SQL Server Memory Report
This report charts page life expectancy, procedure and buffer cache hit ratios and allocated memory sizes over time for a selected SQL Server instance.  

## SQL Server Metric Report
This report shows metric data for a selected statistic class and a selected statistic name (depending on the statistic class selected), for a selected instance over the selected time frame.

## SQL Server Performance Summary
This report shows a performance summary of servers in the enterprise. How well have resources been utilized over the selected time frame?

## SQL Server Single Server Connection Report
This report charts the number of connections to the selected SQL Server Instance over time (active, blocked, total, inactive, system and user connections).

## SQL Server Transaction Daily Range Summary
This report charts database transactions over time for a selected SQL Server Instance.

## SQL Server Transaction Monthly Summary
This report shows monthly average and maximum transaction rates for each database on a selected SQL Server Instance.

## SQL Server Transaction Single Day Summary
This report shows the daily transaction rate (per minute) for all databases on the selected instance for the selected date.

## Server Alarm Report
The Server Alarms report shows all alarms that have occurred on the specified server for a set time period.

## Windows Disk Metric Report
This report shows the bytes read per second, bytes written per second, IO's per second, percent busy, queue length, reads per second, service time, writes per second for the logical and physical disks on the selected server for the selected date.

## Windows Disk Space
Use this report to identify Windows server disks nearing capacity.

## Windows Server Health Report
This report shows the following charts for the specified server for a set time period:

* Total CPU Utilization
* Context Switches/Sec
* Paging Rate
* Network Bandwidth Utilization
* Disk Queue Length

## Windows Inventory
This report shows an inventory of Windows servers in the enterprise: operating system version and service pack, memory size and number of CPU.

## Windows Keyed Metric Report
This report shows metric data for a selected statistic class and a selected statistic name (depending on the statistic class selected), for a selected server over the selected time frame.

## Windows Memory Report
This report charts Physical Memory (free and total), Virtual Memory (free and total) and Paging over time for a selected Windows server.

## Windows Metric Report
This report shows metric data for a selected statistic class and a selected statistic name (depending on the statistic class selected), for a selected server over the selected time frame.

## Windows Performance Summary
This report shows variation of performance over time in the areas of: CPU, Paging, Memory, Network Bytes and Queue Length.

## Windows Virtualization Summary
This report shows variation of CPU performance over time.

## Windows Virtualization Report
This report charts CPU Percentage Analysis and CPU Utilization over time for a selected Windows server.


{% include links.html %}
