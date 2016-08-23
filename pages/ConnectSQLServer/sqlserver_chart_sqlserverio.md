---
title: SQL Server I/O Chart
last_updated: July 29, 2016
summary: "The SQL Server I/O chart shows the number of pages physically read from, and written to, disk by SQL Server."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_chart_sqlserverio.html
id: SQLActivity_Summary.ProcessorQLengthChart
folder: ConnectSQLServer
---


SQL Server keeps a copy of its most recently used database pages in the **Buffer Cache**. When a connection needs to reference a database page, SQL Server performs a **Logical I/O**. This involves checking the Buffer Cache to see if the requested page is already in memory. If the page is not already in there, it will be read from disk, causing a **Physical I/O**.

Listed below are the main physical I/O types shown in the chart.

## Read Ahead

reads occur when SQL Server determines that a table or index is being processed sequentially. In this case, SQL Server reads the next few pages into the Buffer Cache before they are requested by the user connection. Then hopefully they will already be there when required and the user connection will not have to wait for an I/O operation.

## Checkpoint Writes

are the most common type of write activity under normal circumstances. The **Checkpoint** process periodically flushes all modified pages from the Buffer Cache out to disk.

## Lazy Writer Writes

are done when the **Lazy Writer** process needs to free up buffer pages that have been modified in the Buffer Cache. It must first write the changed pages to disk before it can free up the buffers.

## Physical Page Writes

are write operations where the user connection has to wait for the I/O to complete before continuing. These are most often caused by operations such as **create index**, **bulk insert** or **restore**.

## Physical Page Reads

are the most common method that SQL Server uses to read pages. This is used when a connection requests a page that is not already in the buffer cache. The connection requesting the page will have to wait for the I/O operation to complete.

## Logical Page Reads

are performed when pages in the Buffer Cache are being referenced by SQL connections.


{% include links.html %}
