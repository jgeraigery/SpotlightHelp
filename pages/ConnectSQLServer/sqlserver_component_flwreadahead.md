---
title: Read Ahead
last_updated: July 29, 2016
summary: "This flow represents pages being read from disk before they are requested."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_component_flwreadahead.html
folder: ConnectSQLServer
---


When SQL Server thinks data or index pages are being read in a
sequential manner, it will **pre-fetch** the pages into
the Buffer Cache before they are requested by the user. This is known
as **Read Ahead** processing.

Read Ahead can improve the performance of queries that have to process a
lot of table or index pages sequentially, by having the pages already in
the buffer cache before they are required.

In some circumstances, a high level of Read Ahead activity can be an
indication of poorly coded SQL or inadequate indexes. Read Ahead
processing is triggered by **table scans** or **index range
scans**. In some cases defining more suitable indexes or tuning
SQL statements can get SQL Server to use more efficient access methods (e.g.
direct index accesses) instead of these scans.

{% include links.html %}
