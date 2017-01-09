---
title: List of Spotlight Reports
keywords: reports
summary: "From the Spotlight Client click Reports to list the reports available to this Spotlight Client. There may be a mixture of custom reports and reports shipped with Spotlight. The following reports are shipped with Spotlight Double click on the report to open it in theSpotlight Report Viewer. The input parameters for the reports vary. Many of these reports require you to input the start date, end date and connection name."
sidebar: p_enterprise_sidebar
permalink: enterprise_display_reportsshipped.html
folder: SpotlightEnterprise
---



## All SQL Agent Jobs Report


## Custom Counters Report

Chart/Grid | Description
------|------------
Custom Counters chart | Shows the data collected for any configured custom counters on the SQL Servers or Windows hosts included in the report. The chart shows only those counters that return numeric values.
Custom Counters grid | Shows the data collected for any configured custom counters on the selected SQL Servers or Windows hosts. The grid lists the server, name of the counter, time collected, and the value returned by the counter.

{% include tip.html content="To collect the data for the Custom Counters view, see **Configure \| Custom Counters** in the online help." %}


## Database Growth Report
The report contains the following charts for each database:

Chart | Description
------|------------
Data Growth Trend | Shows the following statistics for each database on the specified server: Data size, Data allocated.
Log Growth Trend | Shows the following statistics for the transaction log for each database on the specified server: Log size, Log allocated.

## Database Settings Report
Displays the database settings for all databases on the selected SQL Server instance.

The columns in the grid correspond to the data returned by the SQL Server DatabasePropertyEx function. For more information on these properties, see the Transact-SQL Reference section in Microsoft SQL Server Books Online.


## Deadlock List Report
The report shows all lock requests resulting in a deadlock on the specified server for a set time period.

## Failed SQL Agent Jobs Report
The Failed SQL Agent Jobs grid shows all the SQL Agent Jobs which failed during the selected time range. For a job which failed multiple times during the selected time range, details of the last failure are shown.

The grid contains the following columns:

Column | Description
------|-------------
Server Name | SQL Server instance the job was running on.
Job Name | Name of the job that failed.
Job Category | Category of the SQL Agent job.
Last Run Start Time | Time at which this job started to execute when it last failed.
Last Run Finish Time | Time at which this job finished executing when it last failed.
Last Run Message | Message that the job returned when it last failed.
Last Run Duration | Time this job took to run when it last failed.
Description | Specified job description.


## Server Alarms by Time Report
Shows all alarms that have occurred on the specified server for the specified time period.


## SQL Analysis Workload Report
The Aggregated Workload grid shows a summary of the SQL workload processed by the selected SQL Server instance. The underlying data is captured using a SQL Server trace. Most of the columns in this grid show aggregated data over the selected time range.  

Column | Description
------|-------------
Database Name | Name of the database generating the SQL execution. Note that this column is not populated when showing data from a SQL Server 2000 instance.
Application Name | Name of the last application program that established the SQL Server session that generated the SQL execution.
Host Name | Name of the last machine originating the session that generated the SQL execution.
Login Name | Name of the last user generating the SQL execution.
Event Class | The following SQL executions are captured: SP Completed, SQL Statement Completed, SQL Batch Completed, RPC Completed.
Text Data | Contains text details of the particular instances of the event class(es) being captured by the trace. In the case of statements collected by the trace that differ only by parameter values, the statements are aggregated to show only one such statement with the appended "/* Representative \*/" indicating that other similar statements have been captured.
Execution Count | Number of times the SQL has been executed over the selected time range.
Avg CPU | Average amount of CPU time used by the SQL execution, averaged over the selected time range. Note that this column is not populated for SP:Completed events.
Avg Reads | Average number of logical disk reads performed by the server for the specified SQL execution, averaged over the selected time range. Note that this column is not populated for SP:Completed events.
Avg Writes | Average number of physical disk writes performed by the server for the specified SQL execution, averaged over the selected time range. Note that this column is not populated for SP:Completed events.
Avg Duration | Average duration of the SQL execution, averaged over the selected time range.
Total CPU | Total amount of CPU time used by the SQL execution over the selected time range. Note that this column is not populated for SP:Completed events.
Total Reads | Total number of logical disk reads performed by the server for the specified SQL execution over the selected time range. Note that this column is not populated for SP:Completed events.
Total Writes | Total number of physical disk writes performed by the server for the specified SQL execution over the selected time range. Note that this column is not populated for SP:Completed events.
Total Row Counts | Total number of rows processed by all matching SQL executions over the selected time range. (Not available for SQL Server 2000.)


## SQL Server Blocking Report



## SQL Server Configuration Report
This report shows for a selected SQL Server instance: SQL Server Properties, SQL Server Instance Configuration and SQL Server xp_MSver Results.

## SQL Server Connection Report
The report shows connection statistics for: all connections, user connections, system connections, active connections, inactive connections or blocked connections.

## SQL Server Database Space Report
Use this report to identify databases nearing capacity.

## SQL Server General Statistics Report

## SQL Server Health Database Files Report


## SQL Server Health Report
The Server Health report shows the following charts for the specified server for a set time period:

* Number of Logged on Users
* Batches, Compiles and Recompiles
* Buffer Cache Hit Ratio
* Procedure Cache Hit Ratio
* Page Life Expectancy
* Server Memory

## SQL Server Health Table Summary Report


## SQL Server Index Summary Report

## SQL Server Inventory Report
This report shows an inventory of SQL Servers in the enterprise: version and edition, memory size and number of CPU.



## SQL Server IO Report
This report charts logical and physical IO over time for a selected SQL Server instance.

The Top 8 Database Files by File IO Reads Rate chart displays the file IO reads rate for the eight database files on the SQL Server that have the highest IO read rate over the selected time range.

The Top 8 Database Files by File IO Writes Rate chart displays the file IO writes rate for the eight database files on the SQL Server that have the highest IO write rate over the selected time range.

## SQL Server Job Duration Report

## SQL Server Job Report
This report shows all jobs run on the server. Identify failed jobs. Failed jobs are colored red.

## SQL Server Keyed Metric Report
This report shows metric data for a selected statistic class and a selected statistic name (depending on the statistic class selected), for a selected instance over the selected time frame.

## SQL Server Large Databases Report


## SQL Server Memory Report
This report charts page life expectancy, procedure and buffer cache hit ratios and allocated memory sizes over time for a selected SQL Server instance.  

## SQL Server Metric Report
This report shows metric data for a selected statistic class and a selected statistic name (depending on the statistic class selected), for a selected instance over the selected time frame.

## SQL Server Performance Summary Report
This report shows a performance summary of servers in the enterprise. How well have resources been utilized over the selected time frame?

## SQL Server Redundant and Reverse Indexes Report


## SQL Server Single Server Connection Report
This report charts the number of connections to the selected SQL Server Instance over time (active, blocked, total, inactive, system and user connections).



## SQL Server Tables Missing Clustered Indexes or Primary Keys Report


## SQL Server Transaction Daily Range Summary
This report charts database transactions over time for a selected SQL Server Instance.

## SQL Server Transaction Monthly Summary
This report shows monthly average and maximum transaction rates for each database on a selected SQL Server Instance.

## SQL Server Transaction Single Day Summary
This report shows the daily transaction rate (per minute) for all databases on the selected instance for the selected date.

## SQL Server Wait Statistics Report

## Windows Configuration Report

## Windows Disk Metric Report
This report shows the bytes read per second, bytes written per second, IO's per second, percent busy, queue length, reads per second, service time, writes per second for the logical and physical disks on the selected server for the selected date.

## Windows Disk Space Report
Use this report to identify Windows server disks nearing capacity.


## Windows General Statistics Report

## Windows Hardware Configuration Report


## Windows Inventory Report
This report shows an inventory of Windows servers in the enterprise: operating system version and service pack, memory size and number of CPU.

## Windows Keyed Metric Report
This report shows metric data for a selected statistic class and a selected statistic name (depending on the statistic class selected), for a selected server over the selected time frame.

## Windows Memory Report
This report charts Physical Memory (free and total), Virtual Memory (free and total) and Paging over time for a selected Windows server.

## Windows Metric Report
This report shows metric data for a selected statistic class and a selected statistic name (depending on the statistic class selected), for a selected server over the selected time frame.


## Windows Performance Summary Report
This report shows variation of performance over time in the areas of: CPU, Paging, Memory, Network Bytes and Queue Length.

## Windows Server Health Report
This report shows the following charts for the specified server for a set time period:

* Total CPU Utilization
* Context Switches/Sec
* Paging Rate
* Network Bandwidth Utilization
* Disk Queue Length

## Windows Virtualization Report
This report charts CPU Percentage Analysis and CPU Utilization over time for a selected Windows server.

## Windows Virtualization Summary Report
This report shows variation of CPU performance over time.


{% include links.html %}
