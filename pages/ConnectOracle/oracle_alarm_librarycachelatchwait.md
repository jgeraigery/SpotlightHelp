---
title: ﻿Library Cache Latch Wait Alarm
last_updated: July 29, 2016
summary: "The Lock Wait alarm occurs when the proportion of time spent waiting for locks exceeds a threshold."
sidebar: c_oracle_sidebar
permalink: oracle_alarm_librarycachelatchwait.html
id:
folder: ConnectOracle
---


Library cache latches (or mutexes in Oracle 10g R2 and above) protect the cached SQL statements and object definitions held in the library cache within the Shared Pool.

A library cache latch/mutex must be obtained in order to add a new statement to the library cache. During a parse request, Oracle searches the library cache for a matching statement. If one is not found, Oracle parses the SQL statement, acquires the library cache latch/mutex, and inserts the new SQL. Contention for the library cache latch/mutex can occur when an application generates very high quantities of unique, non-sharable SQL (usually because literals have been used instead of bind variables).

If the **library cache latch** (or mutex) is a bottleneck, try to improve the use of bind variables within your application. Misses on this latch can also be a sign that your application is parsing SQL at a high rate and may be suffering from excessive parse CPU overhead as well.

The **library cache pin latch** must be obtained when a statement in the library cache is re-executed. Misses on this latch occur when there are very high rates of SQL execution. There is little you can do to reduce the load on this latch, although using private rather than public synonyms (or even direct object references such as OWNER.TABLE) may help.





{% include links.html %}
