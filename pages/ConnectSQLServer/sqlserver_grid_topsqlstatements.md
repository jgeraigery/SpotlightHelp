---
title: Top SQL Statements Grid
last_updated: July 29, 2016
summary: "Use the Top SQL Statements grid to diagnose workload issues by displaying SQL statements that match particular criteria."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_topsqlstatements.html
id: topsql.grdtopsql
folder: ConnectSQLServer
---

<note type="note">Not available for SQL Server 2000.</note>

To reduce the load when querying the SQL Server, Spotlight determines the top statements using the 'by' criteria before applying the other filters. For example, if you want to find statements using a particular index, and the top n filter was set to top 50 statements by average worker time, Spotlight first finds the top 50 statements by average worker time and then looks for the use of the specified index within this top 50.

The Top SQL Statements drilldown can be used as an alternative to the SQL Analysis drilldown. Select a statement in the grid to see the complete SQL statement and the query plan in XML.

The columns in the Top SQL Statements grid correspond to the data returned by sys.dm_exec_query_stats. For more information on sys.dm_exec_query_stats, see the Transact-SQL Reference section in Microsoft SQL Server Books Online.


{% include links.html %}
