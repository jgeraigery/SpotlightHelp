---
title: Query Execution Statistics grid
last_updated: July 29, 2016
summary: "Use the Query Execution Statistics grid to diagnose workload issues by displaying SQL statements that match particular criteria."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_queryexecutionstatistics.html
id: topsql.grdtopsql
folder: ConnectSQLServer
---

{% include tip.html content="Not available for SQL Server 2000." %}

To reduce the load when querying the SQL Server, Spotlight determines the top statements using the 'by' criteria before applying the other filters. For example, if you want to find statements using a particular index, and the top n filter was set to top 50 statements by average worker time, Spotlight first finds the top 50 statements by average worker time and then looks for the use of the specified index within this top 50.

The Query Execution Statistics drilldown can be used as an alternative to the SQL Analysis drilldown. Select a statement in the grid to see the complete SQL statement and the query plan.

The columns in the Query Execution Statistics grid correspond to the data returned by sys.dm_exec_query_stats. For more information on sys.dm_exec_query_stats, see the Transact-SQL Reference section in Microsoft SQL Server Books Online.


{% include links.html %}
