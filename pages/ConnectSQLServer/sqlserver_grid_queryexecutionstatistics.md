---
title: Query Execution Statistics grid
last_updated: March 28, 2017
summary: "Use the Query Execution Statistics grid to diagnose workload issues by displaying SQL statements that match particular criteria."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_queryexecutionstatistics.html
id: topsql.grdtopsql
folder: ConnectSQLServer
---

The columns in the Query Execution Statistics grid correspond to the data returned by sys.dm_exec_query_stats. For more information on sys.dm_exec_query_stats, see the Transact-SQL Reference section in Microsoft SQL Server Books Online.

To reduce the load when querying the SQL Server, Spotlight determines the top statements using the 'by' criteria before applying the other filters. For example, if you want to find statements using a particular index, and the top n filter was set to top 50 statements by average worker time, Spotlight first finds the top 50 statements by average worker time and then looks for the use of the specified index within this top 50.

{% include tip.html content="Select a statement in the grid to see the complete SQL statement and the query plan." %}

{% include note.html content="The Query Plan column is empty for longer query plans. As a workaround, right click on the blank query plan cell and select to copy the current cell to the clipboard." %}

{% include note.html content="Not available for SQL Server 2000." %}


{% include links.html %}
