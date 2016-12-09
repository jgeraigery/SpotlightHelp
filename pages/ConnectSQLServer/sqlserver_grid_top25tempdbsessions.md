---
title: Top 25 Tempdb Sessions grid
last_updated: July 29, 2016
summary: "The Top 25 sessions grid captures Tempdb space usage at the time the last SQL statement for the session completed. This grid is populated from sys.dm_db_file_space_usage."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_top25tempdbsessions.html
id: SQLServer_TempDB_Top25Sessions
folder: ConnectSQLServer
---





## Session ID

The ID of the session generating Tempdb usage.

## Total Space

The total space in Tempdb consumed by this session.

## Application

The application generating Tempdb usage.

## Host

The name of the Windows server hosting the SQL Server instance.

## User

The SQL Server login name for this session.

## Current SQL

The SQL statement last completed.

## Internal Objects Space

The space consumed by internal objects in all tasks in this session.

## User Objects Space

The total space used by user objects in this session.

{% include note.html content="The **Internal Objects Space** and **User Objects Space** represent the (allocated - deallocated) pages during the lifetime of the session. They are counters, rather than instantaneous figures. Page counters are initialized to zero (0) at the start of a session. The counters track the total number of pages that have been allocated or deallocated for tasks that are already completed in the session. The counters are updated only when a task ends; they do not reflect running tasks." %}


{% include links.html %}
