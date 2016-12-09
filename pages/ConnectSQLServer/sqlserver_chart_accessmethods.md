---
title: Access Methods chart
last_updated: July 29, 2016
summary: "The Access Methods chart shows various statistics relating to how SQL Server data is being accessed and updated."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_chart_accessmethods.html
id: SQLActivity_IO.AccessMethodsChart
folder: ConnectSQLServer
---


These counters are all collected from the SQL Server Access Methods Manager.

The following counters can be displayed by clicking the arrow next to the chart name:

## Page Splits

This shows the rate at which pages are being split into two because there is not enough free space in the page to accommodate an inserted or updated record. A high page-split rate can indicate you need to rebuild indexes, possibly with a higher **Padding Factor**.

## Page Allocations

Shows the rate at which pages are being allocated to tables or indexes. Indicates how fast tables are expanding.

## Page Deallocations

Shows the rate at which pages are being deallocated from tables or indexes. Indicates how fast tables are shrinking.

## Freespace Scans

The number of scans initiated to search for free space to insert a new record.

## Forwarded Records

The rate at which SQL Server is retrieving forwarded records. When a row in a table that does not have a clustering index is updated - and if the modified row no longer fits on the old page - SQL Server moves the row to a new page and leaves a **forwarding pointer** in the old page. This means the non-clustered indexes do not have to be modified to reflect the new row location, but will cause subsequent retrieval of this row via non-clustered indexes to require an extra I/O. A high **Forwarded Records** rate can indicate you need to reorganise your tables (unload/reload) or define clustered indexes.

## Ghosted Records

The rate at which SQL Server encounters Ghosted Records during scans. When a record is deleted from a table, SQL Server improves concurrency by not physically removing the row from index Leaf levels. Instead the row is simply marked as deleted (ghosted). At some later point, a housekeeping process asynchronously removes these rows from the leaf level. Until the records are removed, SQL Server must skip the ghosted records during leaf-level scans.

## Table Lock Escalations

The rate at which locks are being escalated to the table level.



{% include links.html %}
