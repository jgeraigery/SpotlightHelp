---
title: Tempdb - Sessions involved in this contention
last_updated: July 29, 2016
summary: "Use the Sessions involved in this contention grid to determine which user or application is the cause of Tempdb contention."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_sessionsinvolvedinthiscontention.html
id: SQLServer_TempDB_Sessionsinvolvedinthiscontention
folder: ConnectSQLServer
---

Note that Tempdb contention refers to a bottleneck for threads trying to access allocation pages that are in-memory; it has nothing to do with I/O.

The grid contains the following columns:

## SQL Statement

The SQL Statement responsible for causing the contention.

## Session ID

ID of the session executing the SQL Statement.

The ID is hyper-linked to the same session on the **SQL Activity drilldown \| Sessions page**.

## Wait Type

The type of wait that SQL Server has recorded and which is preventing a current request from being executed.

## Wait Duration

The total wait time in milliseconds spent waiting.

## Blocking Session

The ID of the session that is blocking the request.

## Resource ID

The ID of the resource being waited on.

## Page ID

The ID of the page being waited on.

## Resource Type

The type of page being waited on - GAM (Global Allocation Map) or SGAM (Shared Global Allocation Map) or PFS (Page Free Space)

## Application

The application executing the SQL Statement.

## Host

The name of the Windows server hosting the SQL Server instance.

## User

The SQL Server login name for this session.


{% include links.html %}
