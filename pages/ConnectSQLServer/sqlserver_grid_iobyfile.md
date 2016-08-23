---
title: I/O by File Grid
last_updated: July 29, 2016
summary: "The I/O by File grid shows current SQL Server I/O statistics for each SQL Server database file."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_iobyfile.html
id: SQLActivity_IOByFile.IOByFileGrid
folder: ConnectSQLServer
---



For each SQL Server file you can see:

## DBName

The name of the SQL Server database that contains the file.

## File Name

The name of the file whose I/O statistics are on display.

## File Type

The type of the file whose I/O statistics are on display. Data for SQL Server 2005 and above.

## Total I/O Rate

The current rate (per second) at which SQL Server is performing both physical read and write operations for this file (Reads Rate plus Writes Rate).

## Reads Rate

The current rate at which SQL Server is performing physical read operations from this file.

## Writes Rate

The current rate at which SQL Server is performing physical write operations to this file.

## Wait per I/O

The wait time per I/O (in milliseconds per I/O) for the database file. A value greater than 10 to 15 milliseconds per I/O indicates bad performance.

## Total I/O

The number of kilobytes read from and written to this file since SQL Server started (KB Read plus KB Written).

## KB Read

The number of kilobytes read from this file since SQL Server started.

## KB Written

The number of kilobytes written to this file since SQL Server started.

## KB on Disk

Physical file size on disk in kilobytes. Data for SQL Server 2005 and above.

## Total Wait Time

The total number of milliseconds SQL Server has spent waiting for I/O operations on this file since SQL Server started.

## Reads Wait Time

The total number of milliseconds SQL Server has spent waiting for physical read operations on the file since SQL Server started. Data for SQL Server 2005 and above.

## Writes Wait Time

The total number of milliseconds SQL Server has spent waiting for write operations on the file since SQL Server started. Data for SQL Server 2005 and above.

## Current Wait Time

The number of milliseconds SQL Server has spent waiting for I/O operations on this file since the last time data was collected for this page.

## Current Reads Wait Time

The number of milliseconds SQL Server has spent waiting for physical read operations on this file since the last time data was collected for this page. Data for SQL Server 2005 and above.

## Current Writes Wait Time

The number of milliseconds SQL Server has spent waiting for write operations on this file since the last time data was collected for this page. Data for SQL Server 2005 and above.

## Disk

The disk where the file resides.


You can restrict the files(s) that are included in the chart below by clicking on the file(s) you are interested in.


{% include links.html %}
