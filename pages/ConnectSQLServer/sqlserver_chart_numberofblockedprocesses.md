---
title: Number of Blocked Processes chart
last_updated: July 29, 2016
summary: "The Blocked Processes chart shows the number of SQL Server sessions that were involved in blocks over time."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_chart_numberofblockedprocesses.html
id: SQLActivity_Blocking.BlockedProcessesChart
folder: ConnectSQLServer
---

It allows you to see how often and for how long there were lock conflicts in SQL Server.

It shows the number of sessions that were waiting on locks held by others (Blocked Processes).

It also shows the number of sessions that were not blocked, but were blocking others. These are termed **Lead Blockers** and correspond to sessions in the Blocking grid that do not have a parent in the Blocking chain (at level 1 in the tree).


{% include links.html %}
