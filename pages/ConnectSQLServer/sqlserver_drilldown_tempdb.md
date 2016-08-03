---
title: Tempdb drilldown
last_updated: July 29, 2016
summary: "Tempdb is a system database. It is a temporary workspace for storing temporary tables that hold intermediate results during sorting or query processing. Tempdb is re-created anew from stored configuration each time the SQL Server service starts."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_drilldown_tempdb.html
folder: ConnectSQLServer
---

Use this drilldown to determine at a glance how much space is being consumed by tempdb. Spotlight also warns in advance problems surrounding disk space usage on Tempdb. These problems include: a fixed size Tempdb about to be filled up, a non-fixed size Tempdb trying to auto grow on a volume that does not have enough space for an auto grow.


## Configuration Health page
Investigate Tempdb configuration.

Spotlight verifies the following best practices:

* Tempdb file sizes are pre allocated to be of equal size.
* Tempdb is split into a number of files appropriate to the number of processors in the system configuration.
* Tempdb files are isolated on a drive if I/O rates are significant.
* Tempdb auto growth is turned off.


## Usage page
Investigate Tempdb space usage.

Identify the transactions consuming the most space.

### Tempdb Space Used chart

The tempdb space used chartchart represents "points in time" usage. It is populated from sys.dm_db_file_space_usage.

The chart plots the following:

* **User objects**: System tables and indexes, user defined tables and indexes, global temporary tables, local temporary tables and indexes, table variables and tables returned in table-valued functions.
* **Internal objects**: Work tables (for cursors, spool operations, temporary large objects LOBs), work files (for hash join and hash aggregate operations), intermediate sort results (for rebuilding indexes, group by, order by and union)
* **Version store**: There are two version stores in Tempdb. The online index build version store is used for online index builds in all databases. The common version store is used for all other data modification operations in all databases.
Free space: Unused space.

### Version Store Size Change chart / Version Store Size chart
Use these charts to determine if the Tempdb version store is growing. Is the rate of growth greater than the rate of cleanup?

There are two version stores in Tempdb. The online index build version store is used for online index builds in all databases. The common version store is used for all other data modification operations in all databases.

These charts are populated using SQLTempDBPerfCounters.


 TIP: These charts occupy the same space on the Tempdb drilldown. Alternate between them via the drop down menu in the chart title.


### Top 25 Tempdb sessions grid
The Top 25 sessions grid captures Tempdb space usage at the time the last SQL statement for the session completed. It is populated from sys.dm_db_file_space_usage.


 NOTE: The Top 25 Sessions grid is applicable to SQL Server 2012, Service Pack 2 and above.



## Contention page
Investigate Is the SQL Server experiencing Tempdb contention? If so, which user or application is the cause?

When the Tempdb database is heavily used the SQL Server may experience contention when it tries to allocate pages. Depending on the degree of contention, this may cause queries and requests that involve Tempdb to be unresponsive for short periods of time.

Note that Tempdb contention refers to a bottleneck for threads trying to access allocation pages that are in-memory; it has nothing to do with I/O.

### Wait Time chart
Is the SQL Server experiencing Tempdb contention? The Tempdb Wait Time chart plots wait contention over time for the resource types PFS (page free space), GAM (global allocation map), SGAM (shared global allocation map).

### Sessions involved in this contention grid
Which user or application is the cause of Tempdb contention?








{% include links.html %}
