---
title: Locks Grid
last_updated: July 29, 2016
summary: "The Locks grid shows information about all locks currently held or requested."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_locks.html
id: SQLActivity_Locks.ActivityLocksGrid
folder: ConnectSQLServer
---

You can view session details by right-clicking an entry in the grid and selecting **View Session Details** from the shortcut menu.

The Locks grid is not refreshed automatically. To refresh the Locks grid, click **Refresh Data**.

A SQL Server session can be closed by right-clicking and selecting the **Kill this session** option. This will terminate the entire connection (SPID), not just the lock you selected. This option is available only to members of the Spotlight Diagnostic Administrators group.

For performance reasons, Spotlight limits the number of records that can be viewed in this grid. By default, only 1000 locks will be displayed. If there are more locks than this, then no information will be displayed.

## The available columns are:

### SPID

The server process ID of the current user process.

### Database

The database being used by the current process.

### Count

The number of locks of the type specified in the Lock Type column against the database specified in the Database column from the SPID specified in the SPID column.

### Index Name

The index being used by the current process (if any).

### Object Name

The object that is currently locked.

### Lock Type

The type of the resource that is currently locked (Database, Table, Page, Row, Extent, etc.).

### Mode

The kind of lock being applied to the resource (Shared, Exclusive, Update, IntentShared, IntenExclusive, etc.).

### Status

The status of the lock (Blocked, Blocking, or blank (Granted)).


The data displayed in this grid can be **Filtered**. Filtering is the method Spotlight uses to restrict displays to a manageable or relevant set of data. You can view or change the filter for this grid by clicking the **Change Filter Settings** link in the upper right corner of the drilldown.

You can also view or change this setting by right-clicking the grid and choosing **View/Edit Filter**.

<note type="note">Selecting any of the Locks filtering options means that the selected locks are included in the grid, along with other types of locks. It does not mean that only the selected
locks are shown in the Locks grid.</note>


{% include links.html %}
