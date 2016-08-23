---
title: SQL Analysis Grid
last_updated: July 29, 2016
summary: "The SQL Analysis grid shows the SQL being executed that conforms to the performance criteria configured on the SQL Analysis Options page."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_sqlanalysis.html
id: sqlactivity_gtrace.globaltracegrid
folder: ConnectSQLServer
---


To configure the SQL Analysis options, go to **Monitoring Configuration (Ctrl+M)**  and click **SQL Analysis Filters**.

  <note type="note">The Database Name column is blank when connected to a SQL Server 2000 instance.</note>

Columns shown in the grid by default include:

## Event Class

The following SQL executions are captured:
* SP Completed
* SQL Statement Completed
* SQL Batch Completed
* RPC Completed

## Text Data

Contains text details of the particular instances of the event class(es) being captured by the trace. In the case of statements collected by the trace that differ only by parameter values, the statements are aggregated to show only one such statement with the appended "/* Representative */" indicating that other similar statements have been captured.

## Database Name

(Not available for SQL Server 2000) The name of the database generating the SQL execution.
  <note type="note">This column is blank when connected to a SQL Server 2000 instance.</note>

## Database ID

(Displayed by default for SQL Server 2000 connections.) The ID of the database generating the SQL execution

## Execution Count

The number of times the SQL execution has been executed.

## Average Duration

The average duration of the SQL execution in microseconds.

## Average CPU

The average amount of CPU time used by the SQL execution, measured in milliseconds.

## Average Reads

The average number of logical disk reads performed by the server for the specified SQL execution.

## Average Writes

The average number of physical disk writes performed by the server for the specified SQL execution.

## Average Row Counts

(Not available for SQL Server 2000) The average number of rows affected (not rows returned) by all matching SQL executions.

## Application Name

The name of the application program that established the SQL Server session that generated the SQL execution.

## Last Host Name

The name of the machine originating the session that generated the SQL execution.

## Last Login Name

The name of the user generating the SQL execution.


## Hidden columns (use the grid chooser to display these columns in the grid):

### Last CPU

The amount of CPU time taken by the last matching SQL execution.

### Last Duration

The time taken, in microseconds, by the last matching SQL execution.

### Last Execution time

The date and time when the SQL execution was last run.

### Last Reads

The number of logical reads by the last matching SQL execution. Logical reads do not necessarily go to the physical disk(s).

### Last Row Counts

(Not available for SQL Server 2000) The number of rows affected (not rows returned) by the last matching SQL execution.

### Last Writes

The number of physical writes caused by the last matching SQL execution.

### Max CPU

The maximum amount of CPU time used by the SQL execution, measured in milliseconds.

### Max Duration

The maximum duration of the SQL execution in microseconds.

### Max Reads

The maximum number of logical disk reads performed by the server for the specified SQL execution

### Max Row Counts

(Not available for SQL Server 2000) The maximum number of rows affected (not rows returned) by all matching SQL executions.

### Max Writes

The maximum number of physical disk writes performed by the server for the specified SQL execution.

### Min CPU

The minimum amount of CPU time used by the SQL execution, measured in milliseconds.

### Min Duration

The minimum duration of the SQL execution in microseconds.

### Min Reads

The minimum number of logical disk reads performed by the server for the SQL executions included in the row.

### Min Row Counts

(Not available for SQL Server 2000) The minimum number of rows affected (not rows returned) by all matching SQL executions.

### Min Writes

The minimum number of physical disk writes performed by the server for the specified SQL execution.

### Start Time

The earliest time of the SQL executions included within the row.

### Total CPU

The total amount of CPU time used by the SQL execution, measured in milliseconds.

### Total Duration

The total duration of the SQL execution in microseconds.

### Total Reads

The total number of logical disk reads performed by the server for the specified SQL execution

### Total Row Counts

The total number of rows affected (not rows returned) by all matching SQL executions.

### Total Writes

The total number of physical disk writes performed by the server for the specified SQL execution.

## Clearing results

When viewing real-time data in the SQL Analysis grid, the results are cleared when you leave the SQL Analysis page. If you are viewing historical data, the data in the grid is retained when you leave the SQL Analysis page.

To clear the data in the SQL Analysis grid without having to leave the SQL Analysis page, either:

* Click the **Clear Grid** button (located above the top right corner of the grid). or
* Right-click the grid and select **Clear Grid**.


##Viewing details in the grid

To wrap text in a column onto multiple lines, use the word wrap option. To access the word wrap option, right-click the SQL Analysis grid and select **Properties** and then click the Options tab.

Turning on the word wrap option may degrade the performance of Spotlight.The word wrap option is turned off by default.

To view the details of the highlighted row in one window, right-click the grid and select **Grid Browser**. Use the Previous and Next buttons to move through the items in the grid.

<note type="note">If you have Dell SQL Optimizer installed, you can use it to tune the non-conforming SQL that has been identified.
To do this, right-click a row in the grid and select Optimize SQL.</note>



{% include links.html %}
