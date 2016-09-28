---
title: Parallel Query Server Alarms
last_updated: July 29, 2016
summary: "Parallel server processes perform work to resolve SQL statements that are being executed in parallel. If all parallel server processes are busy, parallel SQL may be downgraded, or even executed serially, thus increasing its execution time."
sidebar: c_oracle_sidebar
permalink: oracle_alarm_parallelqueryserver.html
id:
folder: ConnectOracle
---




Spotlight can raise these Parallel Query Server alarms:


## Parallel Query Servers Busy

Occurs when all or most parallel servers are busy.

## Parallel Queries Downgraded

When the original parallel query server initiates a number of parallel queries on a database table, the lack of resources may limit the number of queries actually executed. For example, when a server requests four parallel queries, but only two can be run, the number of queries has been downgraded from four to two.

Note: (Oracle 11g Release 2) This alarm will not fire if the PARALLEL_DEGREE_POLICY parameter is set to AUTO. This is because Oracle decides the degree of parallelism for a statement automatically.

## Parallel Queries Serialized

When the number of requested parallel queries is downgraded to one, the query is no longer a parallel query but a serial query. The query has been serialized.


You can increase the number of parallel servers by increasing the value of the initialization parameter **PARALLEL_MAX_SERVERS**. Increasing this parameter can lead to reduced performance if the number of active servers exceeds the capacity of your CPU or disk subsystems.





{% include links.html %}
