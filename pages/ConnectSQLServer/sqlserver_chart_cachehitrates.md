---
title: Cache Hit Rates chart
last_updated: July 29, 2016
summary: "The Cache Hit Rates chart shows the Hit Rates for the main SQL Server caches."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_chart_cachehitrates.html
id: SQLActivity_Summary.CacheHitRatesChart
folder: ConnectSQLServer
---



A Hit Rate indicates how much work (**I/O** or **compilations**) is being saved by caching information in memory.

Hit rates are shown for the following Caches:

* Buffer Cache
* Procedure Cache - the hit rate for this cache will vary widely depending on how the application is written. This figure is averaged for all procedure cache object types except ad hoc SQL.

Spotlight calculates its hit rates using a differential sampling method. Unlike most SQL Server monitors, it is NOT reporting the average hit rate since SQL Server started.


{% include links.html %}
