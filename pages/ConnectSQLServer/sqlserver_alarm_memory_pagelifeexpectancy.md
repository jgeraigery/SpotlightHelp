---
title: Memory - Page Life Expectancy Alarm
last_updated: July 29, 2016
summary: "The Memory - Page Life Expectancy alarm becomes active when the page life expectancy falls below a threshold."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_memory_pagelifeexpectancy.html
id: Home.SpotlightLabel1.Page Life Expectancy.alarm
folder: ConnectSQLServer
---




A low page life expectancy indicates that SQL Server is evicting pages from the buffer cache thus reducing the value of the cache. This has the effect of requiring SQL Server to perform more disk reads. Performing extra disk reads degrades SQL Server performance.

This often has one of two causes: SQL Server has insufficient memory to work with, or SQL queries are accessing a very large number of pages in a non-sequential manner. Microsoft recommends that page life expectancy be greater than 5 minutes (300 seconds).

## When the alarm is raised

Ensure that SQL Server is configured to use as much physical memory as possible. Check, and if necessary alter, the Max Server Memory (MB) parameter in the SQL Server \| Configuration Drilldown.
If you have applications other than SQL Server running on the Windows server, and the SQL Memory gauge on the main page shows that SQL Server is not using all the memory it could, then these applications could be taking memory away from SQL Server. Consider increasing your SQL Server Min Memory parameter setting so that SQL Server gets more memory. (You can check this setting on the SQL Server \| Configuration Drilldown).
Consider adding more physical RAM to the server.
Identify inefficient SQL using the Sessions page on the SQL Server \| SQL Activity Drilldown. Look for sessions that are active and that are generating a large number of I/O operations. The Session Trace sub-page on the Sessions page or Microsoft's SQL Server Profiler tool can help here.

{% include links.html %}
