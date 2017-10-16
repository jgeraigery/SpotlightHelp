---
title: Sessions grid
last_updated: October 16, 2017
summary: "The Sessions grid shows information about all SQL Azure database sessions on the SQ Azure database, each row representing a single SQL Server session. Note that many applications will create multiple connections to the SQL Azure database."
sidebar: c_sqlazure_sidebar
id: Sessions.grdSessions_sosa
permalink: sqlazure_grid_sessions.html
folder: ConnectSQLAzure
---


## Tips for use

* Click a session in the grid to view more details.
* To find a particular session, right-click and choose **Find**.
* Some of these columns may be hidden by default. To view them, right-click the grid headings and select which columns you want to view.

## Columns in this grid include:

### SPID

Number that the SQL Azure database has assigned to uniquely identify the selected session.

### SQL User

The SQL Azure database login name for this session.

### Status

Status of the session (running, sleeping, blocked etc).

### Blocked By

Which SPID (if any) holds locks that this session is waiting on.

### Last Command

Current or previous command executed.

### Memory

Number of pages in the procedure cache that are currently allocated to this process. A negative number indicates that the process is freeing memory allocated by another process.

### CPU

Total CPU that this session has used since the last refresh.

### I/O

Total I/O that this session has used since the last refresh.

### Logical Reads

Number of logical reads performed for each request.

### Reads

Number of physical reads performed for each request.

### Writes

Number of physical writes performed for each request.

### Total CPU

Total time that this session has used since connecting to the SQL Azure database.

### Total I/O

Total number of I/O operations performed for the session.

### Total Logical Reads

Number of logical reads performed for the session.

### Total Reads

Number of physical reads performed for the session.

### Total Writes

Number of physical writes performed for the session.

### Current Wait Time (ms)

Amount of time this session has been waiting. This will show 0 if the session is not currently waiting.

### Last Wait Type

Describes the type of wait that this session last waited on (or is currently waiting on).

### Last Wait Resource

Describes the resource that this session last waited for (or is currently waiting for). Blank if the session is not currently waiting

### Last Batch Time

Time the last batch started execution.

### Time Since Last Batch

Elapsed time since the last batch started execution.

### Tran Count

Number of open transactions which corresponds to the session's @@trancount value.

### Program

Program the user is running to access the SQL Azure database.

### Host Name

Name of the client computer.

### Host Process

Workstation process id number.

### Net Library

Network protocol being used to establish communication between SQL Server and the application.

### Login Time

Time the session was created.

### Request ID

Returns the ID of the current request within the current session.

### Plan Handle

Identifier for the query plan. Note the plan handle is available only when the session is executing.

### SQL Handle

Internal handle to the SQL for this plan (This column is hidden by default).






{% include links.html %}
