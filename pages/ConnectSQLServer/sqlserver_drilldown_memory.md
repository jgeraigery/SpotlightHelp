---
title: Memory drilldown
last_updated: July 29, 2016
summary: "The Memory drilldown shows details of memory usage for the SQL Server."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_drilldown_memory.html
folder: ConnectSQLServer
---


## How to open the Memory drilldown

From the Spotlight Client

1. Select the connection from the left Connections pane.
2. Click **Monitor \| Memory** from the ribbon.
   {% include imageClient.html file="tb_drilldown_memory.png" alt="Memory drilldown for SQL Server" %}

{% include tip.html content="Click for more information on using [Spotlight Charts][enterprise_display_charts] and [Spotlight Grids][enterprise_display_grids]." %}


## About the Memory drilldown

Investigate how SQL Server is using physical memory.


### Memory Areas chart
Shows the total amount of memory being used by SQL Server's caches over time.

### Hit Rates chart
Shows the Hit Rates for the main SQL Server caches.

A Hit Rate indicates the amount of work (I/O or compilations) that is being saved by caching information in memory.

Hit rates are shown for the following caches:

Buffer Cache

Procedure Cache - The hit rate for this cache will vary widely depending on how the application is written. This figure is averaged for all procedure cache object types except ad hoc SQL.

Spotlight calculates its hit rates using a differential sampling method. Unlike most SQL Server monitors, it is not reporting the average hit rate since SQL Server started.

### Server Memory chart
Shows the total memory that SQL Server is using, scaled against the target amount of memory it could use.

### Cache chart
Shows the amount of memory allocated to the Buffer Cache and Procedure Cache over time.

The buffer cache is normally the largest memory cache used by SQL Server.

(SQL Server 2012 and above) Shows also the amount of memory allocated to Free Pages and Stolen Pages over time.

### Buffer Cache Page Life Expectancy chart 
This shows the current Page Life Expectancy.

SQL Server holds recently accessed database pages in a memory area called the Buffer Cache. If a SQL process needs to access a database page and that page is already in the buffer cache, then SQL Server does not need to read the page from disk. This can save a significant amount of disk I/O and can speed up queries significantly.

Page Life Expectancy is the length of time in seconds that a database page will stay in the buffer cache without references. Large values mean that pages are staying in the buffer cache longer and that the buffer cache is behaving efficiently. Small values mean that pages are being flushed out of the cache within a small period of time and that the buffer cache is not being effective. Microsoft recommends 300 seconds as the minimum value for this; any less is indicative of a shortage of memory.


{% include links.html %}
