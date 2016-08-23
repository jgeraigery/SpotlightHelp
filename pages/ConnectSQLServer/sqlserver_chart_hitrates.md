---
title: Hit Rates Chart
last_updated: July 29, 2016
summary: "The Hit Rates chart shows the Hit Rates for the main SQL Server caches."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_chart_hitrates.html
id: hit_rates_main
folder: ConnectSQLServer
---



A Hit Rate indicates the amount of work (**I/O** or **compilations**) that is being saved by caching information in memory.

Hit rates are shown for the following caches:

Buffer Cache |
Procedure Cache | The hit rate for this cache will vary widely depending on how the application is written. This figure is averaged for all procedure cache object types except ad hoc SQL.

Spotlight calculates its hit rates using a differential sampling method. Unlike most SQL Server monitors, it is not reporting the average hit rate since SQL Server started.


{% include links.html %}
