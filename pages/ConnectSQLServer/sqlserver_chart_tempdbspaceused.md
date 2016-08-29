---
title: Tempdb Space Used Chart
last_updated: July 29, 2016
summary: "The Tempdb Space Used chart represents 'points in time' usage. It is populated from sys.dm_db_file_space_usage."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_chart_tempdbspaceused.html
id: SQLServer_TempDB_SpaceUsedChart
folder: ConnectSQLServer
---


The chart plots the following:

## User Objects

System tables and indexes, user defined tables and indexes, global temporary tables, local temporary tables and indexes, table variables and tables returned in table-valued functions.

## Internal Objects

Work tables (for cursors, spool operations, temporary large objects LOBs), work files (for hash join and hash aggregate operations), intermediate sort results (for rebuilding indexes, group by, order by and union)

## Version Store

There are two version stores in Tempdb. The online index build version store is used for online index builds in all databases. The common version store is used for all other data modification operations in all databases.

## Free Space

Unused space.

{% include links.html %}
