---
title: Parallel Query Servers Busy Alarm
last_updated: July 29, 2016
summary: "Parallel server processes perform work to resolve SQL statements that are being executed in parallel. If all parallel server processes are busy, parallel SQL may be downgraded, or even executed serially, thus increasing its execution time. The Parallel Query Servers Busy alarm occurs when all or most parallel servers are busy."
sidebar: c_oracle_sidebar
permalink: oracle_alarm_parallelqueryserversbusy.html
id: Home.ParallelQuery.PQ servers busy
folder: ConnectOracle
---


You can increase the number of parallel servers by increasing the value of the initialization parameter **PARALLEL_MAX_SERVERS**. Increasing this parameter can lead to reduced performance if the number of servers active exceeds the capacity of your CPU or disk subsystems.

For more information, see the **Parallel Query Servers** chart in the **Activity drilldown** and the **Server Processes** panel on the Spotlight Overview page.


{% include links.html %}
