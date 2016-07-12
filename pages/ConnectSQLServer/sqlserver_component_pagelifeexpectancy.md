---
title: Page Life Expectancy
summary: "This shows the current Page Life Expectancy."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_component_pagelifeexpectancy.html
folder: ConnectSQLServer
---


SQL Server holds recently accessed database pages in a memory area called the Buffer Cache.

If a SQL process needs to access a database page and that page is already in the buffer cache, then SQL Server does not need to read the page from disk. This can save a significant amount of disk I/O and can speed up queries significantly.

**Page Life Expectancy** is the length of time in seconds that a database page will stay in the buffer cache without references. Large values mean that pages are staying in the buffer cache longer and that the buffer cache is behaving efficiently. Small values mean that pages are being flushed out of the cache within a small period of time and that the buffer cache is not being effective. Microsoft recommends 300 seconds as the minimum value; any less is indicative of a shortage of memory.

{% include links.html %}
