---
title: I/O by File chart
last_updated: July 29, 2016
summary: "The I/O by File chart shows SQL Server I/O statistics for each SQL Server database file."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_chart_iobyfile.html
id: SQLActivity_IOByFile.IOByFileChart
folder: ConnectSQLServer
---



{% include tip.html content="You can restrict the files(s) that are included in this chart by clicking on the file(s) you are interested in the grid at the top." %}

The following counters can be displayed by clicking the arrow next to the chart name:

## Wait per I/O

The wait time per I/O (in milliseconds) for the selected database file.

## Current I/O rate

The current rate at which SQL Server is performing physical read and write operations to this file (Reads rate plus Writes rate).

## Current Read Rate

The current rate at which SQL Server is performing physical read operations from this file.

## Current Write Rate

The current rate at which SQL Server is performing physical write operations to this file.

## Total I/O

The number of kilobytes read from or written to this file since SQL Server started (KB Read plus KB Written).

## Total Wait Time

The total number of milliseconds that SQL Server has spent waiting for I/O operations on this file since SQL Server started.

## Current Wait Time

The number of milliseconds that SQL Server has spent waiting for I/O operations on this file since the last time data for this page was collected.



{% include links.html %}
