---
title: ﻿SQL Memory
summary: "This gauge shows the total memory that SQL Server is currently using scaled against the maximum amount of memory it can use."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_component_sqlmemory
folder: ConnectSQLServer
---


<p>By default, SQL Server dynamically manages its memory. It will
 request extra memory from the operating system as required to satisfy
 the queries being run. SQL Server also monitors the stress on the
 Windows memory manager and when it finds that the memory manager is having
 trouble satisfying the memory requests of other windows processes, SQL Server
 will voluntarily release some of its memory back to windows.</p>

<p>This dynamic memory management means SQL Server can automatically
 tune its memory allocations based on the load it is processing and the
 demands of other Windows processes on the server.</p>

<p>Each page of memory used by SQL Server is assigned to one of several
 caches. Each cache will grow and shrink in size as required.
 The main caches are the <uicontrol>Buffer Cache</uicontrol>, which holds recently
 accessed database pages, and the <uicontrol>Procedure Cache</uicontrol>, which
 holds recently compiled query execution plans.</p>

<p>This Memory gauge shows the total amount of memory currently allocated
 to SQL Server.</p>

<p>The maximum value shown on this gauge is the lower of SQL Server's
 <uicontrol>Max Memory</uicontrol> parameter and the amount of <uicontrol>physical
 RAM</uicontrol> on the machine. It indicates the maximum amount of memory
 that SQL Server can use.</p>

<p>Two SQL Server parameters can be used to influence the amount of
 memory that SQL Server uses. The <uicontrol>Min Memory</uicontrol> and
 <uicontrol>Max Memory</uicontrol> parameters both default to <uicontrol>0</uicontrol>,
 which causes SQL Server to manage its total memory use as it sees
 fit. However you can set these parameters to non-zero values.</p>

<p>A non-zero <uicontrol>Max Memory</uicontrol> parameter causes SQL Server
 to never request more than that amount of memory.</p>

<p>A non-zero <uicontrol>Min Memory</uicontrol> parameter causes SQL Server
 not to give memory back to Windows if its total memory allocation is less
 than the value specified. Note that SQL Server does NOT
 automatically request this amount of memory on startup, but will request
 additional memory from Windows as it needs it, and that SQL Server
 will not release any memory back to the operating system until it has
 allocated more than this "minimum" amount.</p>

<p>Click this gauge to view the page on the SQL Memory drilldown that shows
 you how SQL Server is currently using its memory.</p>
