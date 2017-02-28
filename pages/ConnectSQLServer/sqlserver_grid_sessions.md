---
title: Sessions grid
last_updated: July 29, 2016
summary: "The Sessions grid shows all SQL Server sessions, each row representing a single SQL Server session."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_sessions.html
id: SQLActivity_Sessions.ConnectionsGrid
folder: ConnectSQLServer
---

## Tips to this grid

* Many applications create multiple connections to SQL Server.
* When there are more than 2000 sessions only those sessions that are active (and those sessions that are blocked and blocking) are shown.
* In SQL Server 2005 and 2008, to show only those sessions that are currently executing, click **Show active sessions only**.
* In SQL Server 2000, clicking **Show active sessions only** shows sessions that:
   * Do not have a status of sleeping, background or dormant.
   * Are blocked.
   * Have a command type of "WAITFOR".
* To close a SQL Server session, right click and select **Kill this session**. This option is available only to members of the Spotlight Diagnostic Administrators group.  To select multiple sessions use the shortcut key combinations CTRL+click or SHIFT+click.
* Click a session in the grid for more details on the session.

## The columns of the grid include:

### SPID

Number that SQL Server has assigned to uniquely identify the selected session.

### SQL User

SQL Server login name for this session.

### Status

Status of the session (runnable, sleeping, blocked etc).

{% include tip.html content="The status is color coded for readability." %}

### Blocked By

Which SPID (if any) holds locks that this session is waiting on.

### Last Cmd

Current or previous command executed.

### DB Name

Name of the Database that the session is in.

### Mem

Number of pages in the procedure cache that are currently allocated to this process. A negative number indicates that the process is freeing memory allocated by another process.

### CPU ms/s

The CPU time (in milliseconds) the session used per second. Use this column to observe sessions with high recent CPU usage.

### I/O per sec

The number of I/O requests serviced per second. Use this column to observe sessions with high I/O usage.

### Logical Reads

Number of logical reads performed for each request.  It shows no data for SQL Server 2000.

### Reads

Number of physical reads performed for each request.  It shows no data for SQL Server 2000.

### Writes

Number of physical writes performed for each request.  It shows no data for SQL Server 2000.

### Total CPU

CPU-time consumed by the session since SQL Server restart. It is updated every time execution finishes. Units: Miliseconds.

### Total I/O

The sum of **Total Reads** and **Total Writes**.

### Total Logical Reads

Number of logical reads performed for the session. It shows no data for SQL Server 2000.

### Total Reads

Number of physical reads performed for the session. It shows no data for SQL Server 2000.

### Total Writes

Number of physical writes performed for the session. It shows no data for SQL Server 2000.

### Current Wait Time (ms)

Amount of time this session has been waiting. It shows 0 if the session is not currently waiting.

### Last Wait Type

Describes the type of wait that this session last waited on (or is currently waiting on).

{% include tip.html content="Data for this column is reported directly from SQL Server and, for performance reasons, is not resolved to actual resource names during normal data collection. To resolve the data to a more readable form, click the Question Mark button." %}

### Last Wait Resource

Describes the resource that this session last waited for (or is currently waiting for). It shows no data if the session is not waiting.

{% include tip.html content="Data for this column is reported directly from SQL Server and, for performance reasons, is not resolved to actual resource names during normal data collection. To resolve the data to a more readable form, click the Question Mark button." %}

### Last Batch Time

Time the last batch started execution.

### Time Since Last Batch

Elapsed time since the last batch started execution.

### Tran Count

Number of open transactions which corresponds to the session's @@trancount value.

### Program

Program the user is running to access SQL Server.

### Host Name

Name of the client computer.

### Host Process

Workstation process id number.

### Net Address

In SQL Server 2005 and 2008, this is the IP address for the client computer's network card.
In SQL Server 2000, this is the mac address for the client computer's network card.

### Net Library

Network protocol being used to establish communication between SQL Server and the application.

### Login Time

Time the session was created.

### Request ID

Returns the ID of the current request within the current session. It shows no data for SQL Server 2000.

### Plan Handle

Identifier for the query plan. Note the plan handle is available only when the session is executing.

### Win Domain

Name of the Windows domain that the specified user belongs to.

### Win User

Name of the Windows account under which the user is logged on.

## General tips to using Spotlight grids

* Some columns may be hidden by default. Right-click the grid headings and select the columns to show.
* To filter the data displayed in this grid to restrict displays to a manageable or relevant set of data, right-click the grid and select **View/Edit Filter**.
* To find a particular session, right-click and choose **Find**.



{% include links.html %}
