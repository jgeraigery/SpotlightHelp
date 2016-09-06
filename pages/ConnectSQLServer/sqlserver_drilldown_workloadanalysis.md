---
title: Workload Analysis drilldown
last_updated: July 29, 2016
summary: "Drilldown on the workload of this SQL Server instance. What work is the database system producing in a given time? What resources are consumed in producing this work?"
sidebar: c_sqlserver_sidebar
permalink: sqlserver_drilldown_workloadanalysis.html
folder: ConnectSQLServer
---

## 1. Resource
Select the resource to investigate further.

Resource | Description
---------|------------
CPU | This resource measures the rate of CPU time needed to parse, compile, and execute each statement in the query. Select this resource to inquire into any strain the SQL Server instance is putting upon the CPU.
Duration | Select this resource to analyze the time taken to parse, compile and execute a given query.
Reads | This resource measures the number of pages read per second: from the data cache and from disk. A high number of page reads may indicate that the SQL Server is executing inefficient queries. <br><br>SQL Server 2012 and above differentiates physical reads from logical reads.
Writes | This resource measures the number of physical disk writes performed per second. A high number of page writes may indicate that the SQL Server is executing inefficient queries.

 TIP: Select the time frame to investigate: the last 15 minutes, the last day... Select Custom to enter a start time and end time.

## 2. Workload

Drilldown on the workload menu. Select the item to analyze on the grid and charts. The basic workload menu can be expanded to select a specific database, application or other workload.

Workload | Description
---------|------------
All Workload | Summarize all workload of the selected resource.
Database | Analyze which database is contributing most to the workload of the selected resource.
Application | Analyze which application is contributing most to the workload of the selected resource.
User | Analyze which user is contributing most to the workload of the selected resource.
Host | Analyze which host is contributing most to the workload of the selected resource.
Statement | Analyze which SQL statement is contributing most to the workload of the selected resource.


 TIP: Right click on a statement and select **View Wait Details** to show that statement in the SQL Server \| Wait Events drilldown. This shows what the query is waiting on.


## 3. Grid and charts

  TIP: When a Workload Statement is selected, click **View Wait Details** alongside the statement header to show that statement in the SQL Server \| Wait Events drilldown. This shows what the query is waiting on.


 The grid provides a breakdown on the selected workload.

### Grid Column

#### Workload
  This first column gives a breakdown of the selected workload. For example, if the **Database** workload is selected, then a breakdown of databases is given.

 The top consumer of the resource is (by default) top of the list. Click on the column headers to rearrange the sort order of the grid.

#### CPU / Duration
  Where the selected resource is CPU or Duration, the grid shows the time (ms) spent by the selected workload over the selected time frame on this resource.

 The % CPU column is scaled to represent the percent relative to the available CPU time. The values are small as the available CPU time in milliseconds over an hour (the period selected) would be 1000 * 3600 * the number of CPUs.

#### Reads / Writes
  Where the selected resource is Reads or Writes, the grid shows the time (ms) spent by the selected workload over the selected time frame on this resource.

 The % Total column gives the proportion of time spent on the selected workload compared to other workloads of the same type.


  Note: SQL Server 2012 and above differentiates physical reads from logical reads. There is an issue when monitoring a failover cluster:- the Physical Reads value is always 0.


#### Execution Count
  The Execution Count column shows the number of executions run against the selected workload over the selected time frame on this resource.

 The % Total column gives the proportion of executions on the selected workload compared to other workloads of the same type.


### Chart  

Note: SQL Server 2012 and above differentiates physical reads from logical reads. There is an issue when monitoring a failover cluster and Physical Reads is selected. The charts show No Data.


#### Time Series Chart
  This chart shows the resource usage attributed to the selected workload over the given time frame. Drilldown on the workload menu to select a workload item to compare with other workloads of the same type.

 For example: Expand the Workload menu to select a specific database. The chart shows the usage of the selected resource by the selected database over the selected time frame. It also shows (by comparison) the total usage of the selected resource by databases over the selected time frame.

#### Pie Chart
  This chart shows the proportion of resource usage by the selected workload compared to other workloads of the same type.

 For example: Expand the Workload menu to select a specific database. The pie represents all database usage of the selected resource. The selected segment of the pie shows the proportion of that usage by the selected database.





{% include links.html %}
