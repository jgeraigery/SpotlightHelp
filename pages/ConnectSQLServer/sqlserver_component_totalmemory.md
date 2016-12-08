---
title: ﻿Total Memory
last_updated: July 29, 2016
summary: "This gauge shows the total memory that SQL Server is currently using scaled against the maximum amount of memory it can use."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_component_totalmemory.html
id: mgSQLMemory
folder: ConnectSQLServer
---


By default, SQL Server dynamically manages its memory. It will request extra memory from the operating system as required to satisfy the queries being run. SQL Server also monitors the stress on the Windows memory manager and when it finds that the memory manager is having trouble satisfying the memory requests of other windows processes, SQL Server will voluntarily release some of its memory back to windows.

This dynamic memory management means SQL Server can automatically tune its memory allocations based on the load it is processing and the demands of other Windows processes on the server.

Each page of memory used by SQL Server is assigned to one of several caches. Each cache will grow and shrink in size as required. The main caches are the **Buffer Cache**, which holds recently accessed database pages, and the **Procedure Cache**, which holds recently compiled query execution plans.

This Memory gauge shows the total amount of memory currently allocated to SQL Server.

The maximum value shown on this gauge is the lower of SQL Server's **Max Memory** parameter and the amount of **physical RAM** on the machine. It indicates the maximum amount of memory that SQL Server can use.

SQL Server parameters can be used to influence the amount of memory that SQL Server uses. The **Min Memory** and **Max Memory** parameters both default to **0**, which causes SQL Server to manage its total memory use as it sees fit. However you can set these parameters to non-zero values.

A non-zero **Max Memory** parameter causes SQL Server to never request more than that amount of memory.

A non-zero **Min Memory** parameter causes SQL Server not to give memory back to Windows if its total memory allocation is less than the value specified. Note that SQL Server does NOT automatically request this amount of memory on startup, but will request additional memory from Windows as it needs it, and that SQL Server will not release any memory back to the operating system until it has allocated more than this "minimum" amount.

{% include tip.html content="Click this gauge to view the page on the **SQL Memory drilldown** that shows you how SQL Server is currently using its memory." %}


 {% include links.html %}
