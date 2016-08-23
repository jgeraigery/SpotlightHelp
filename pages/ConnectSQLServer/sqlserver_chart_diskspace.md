---
title: Disk Space Chart
last_updated: July 29, 2016
summary: "The Disk Space chart shows each logical disk on the server, and allocates the space on each disk into either **SQL Data** files,  **SQL Log** files, **Non-SQL** files, or **Free Space**."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_chart_diskspace.html
id: Databases2_Disks.chtDatabases2_Disks
folder: ConnectSQLServer
---



You can easily see how much of each disk is used by SQL databases and how much is free.

The components in the chart are:

## Data Used

The amount of space on the disk used by data in the current SQL Server database(s).

## Data Free

The amount of space on the disk allocated to data in the current SQL Server database(s) but not used.

## Log Used

The amount of space on the disk allocated to SQL Server log files for the current database(s).

## Log Free

The amount of space on the disk allocated to log files in the current SQL Server database(s) but not used.

## Disk Free

The amount of space on the disk not used by any files.

## Non-SQL Files

The amount of space on the disk used by files not associated with the current SQL Server database(s).


Select one or more of the databases in the Databases grid to restrict the **Data** and **Log** figures to only the space used by those databases.

To include non-SQL files in the chart, select the **Include Non-SQL files in chart** option, located above the chart.

You can choose to display the chart in either megabytes (MB) or percentage via the Disk Space Utilization list above the chart.

<note type="note">The space shown for SQL Data and Log files refers to files in this instance of SQL Server only. If there are multiple SQL Server instances on this server, the data/log files for other instances will be included in the **Non-SQL Files** figure.</note>

<note type="note">If the Windows server being monitored does not have Logical Disk performance counters enabled, the **Non-SQL Files** component of this chart will always be zero. If disk counters are not enabled, the Disk Counters Disabled alarm will be shown on the home page. To enable disk counters, run the Windows command diskperf -y and restart the server.</note>


{% include links.html %}
