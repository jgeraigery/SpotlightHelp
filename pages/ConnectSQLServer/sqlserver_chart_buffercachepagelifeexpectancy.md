---
title: Buffer Cache Page Life Expectancy Chart
last_updated: July 29, 2016
summary: "The Page Life Expectancy chart shows the page life of buffer cache pages over time."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_chart_buffercachepagelifeexpectancy.html
id: sql server health.sql server general statistics.page life expectancy
folder: ConnectSQLServer
---



Page Life Expectancy is the length of time in seconds that a database page will stay in the buffer cache without references. Large values mean that pages are staying in the buffer cache longer and that the buffer cache is behaving efficiently. Small values mean that pages are being flushed out of the cache within a small period of time and that the buffer cache is not being effective. Microsoft recommends 300 seconds as the minimum value for this statistic; any less is indicative of a shortage of memory.


{% include links.html %}
