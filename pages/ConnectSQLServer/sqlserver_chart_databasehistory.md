---
title: Database History chart
last_updated: July 29, 2016
summary: "The Database History chart shows various statistics relating to recent I/O activity on each database."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_chart_databasehistory.html
id: Databases2_Summary.DBHistoryChart
folder: ConnectSQLServer
---

## How to use the chart

To view a particular graph, choose it from the Database History list.

">The graphs in the chart (described below) are available for each database. To view a particular graph, choose it from the **Database History** list. When no database is selected in the Databases grid, the Database History chart displays information for all databases. When you select a database in the Database grid, both charts (Database Space and Database History) display information for the selected database only. You can display information for multiple databases by selecting multiple databases in the Database grid. Hold down the **Shift** key to select multiple databases, or the **CTRL** key to select individual databases.

## The following graphs are available for each database:

### Log Used

The amount of file space allocated to the transaction log of each database that is currently used. Log space can be freed up by backing up the log, or truncating it (backup log *dbname* with truncate_only). All log records that exist after the oldest open transaction cannot be freed.

### Data File Size MB

The amount of disk space that the data files are using. This graph shows how the size of data files have changed over time.

### Log File Size MB

The amount of disk space that the log files are using. This graph shows how the size of log files have changed over time.

### Active Transactions

The number of open transactions in each database.

### Transactions Rate

The rate of transactions for each database.

### Log Cache Hit Rate

How much read I/O is being saved by caching log data. The log caches will normally only have a non-zero hit rate if there is Rollback activity occurring.

### BCP Throughput Rate

The rate (measured in kilobytes per second) at which data is being loaded into the database using **BCP** (Bulk Copy Program) or BULK INSERT. While BCP and BULK INSERT are the fastest way of getting data into SQL Server, you can expect performance to be degraded for other users while they run.

### Backup Throughput Rate

The rate at which backup or restore commands are reading or writing to the database. While backups are essential, you can expect performance to be degraded for other users while they run.

### DBCC Scan Bytes Rates

The rate at which Database Consistency Checks (DBCCs) are processing data. While regularly running DBCC is advisable to ensure the consistency of your databases, you can expect performance to be degraded for other users while they run.

### Log Flushes Rate

The rate at which the log cache for each database is being flushed to disk, which is necessary to guarantee that transactions can be recovered in the event of a system failure. The most common cause of a log flush is a user issuing a commit transaction.

### Log Flush Wait (ms)

The amount of time spent waiting for log flushes in each database. High log flush wait time can be caused by a slow or overworked disk subsystem. If a database has a consistently high Log Flush Wait Time that never changes, run the SQL command **CHECKPOINT** on that database to force another log flush and check the value in Spotlight again.

### Log Growths Rate

The number of times the log has been expanded for each database.

### Log Shrinks Rate

The number of times the log has been reduced for each database.

### Log Truncations Rate

The frequency of log truncations for each database. This can be caused by manual truncations (backup log dbname with truncate_only) or automatically if the database has the **trunc.log on chkpt.** option turned on.



{% include links.html %}
