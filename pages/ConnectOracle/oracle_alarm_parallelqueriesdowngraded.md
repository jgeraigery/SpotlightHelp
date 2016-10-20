---
title: Parallel Queries Downgraded Alarm
last_updated: July 29, 2016
summary: "When the original parallel query server initiates a number of parallel queries on a database table, the lack of resources may limit the number of queries actually executed. For example, when a server requests four parallel queries, but only two can be run, the number of queries has been downgraded from four to two."
sidebar: c_oracle_sidebar
permalink: oracle_alarm_parallelqueriesdowngraded.html
id: Home.ParallelQuery.Parallel downgraded.Alarm
folder: ConnectOracle
---



{% include note.html content="For Oracle 11gR2 databases, this alarm will not fire if the parameter PARALLEL_DEGREE_POLICY is set to AUTO. This is because Oracle decides the degree of parallelism for a statement automatically." %}

For more information, see the **Parallel Query Servers chart** in the Activity drilldown and the **Server Processes** panel on the Spotlight Overview page.



{% include links.html %}
