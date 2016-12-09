---
title: Session locks
last_updated: July 29, 2016
summary: "The Session Locks sub-page shows all locks held or requested by the selected session."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_sessionlocks.html
id: SQLActivity_Sessions_Locks.SessionLocksGrid
folder: ConnectSQLServer
---

{% include tip.html content="Columns in this grid contain information that can also be seen in the **Locks** page of the **SQL Activity** drilldown." %}

## The details in this grid are:

### Lock Type

The type of the resource that is currently locked (Database, Table, Page, Row, Extent, etc. Note that AllocUnit, HoBT, Metadata, and Object are displayed for SQL Server 2005 instances only).

### Mode

The kind of lock being applied to the resource (Shared, Exclusive, Update, IntentShared, IntentExclusive, etc.).

### Status

The status of the lock (Blocked, Blocking, or blank (Granted)).

The **Status** column shows whether the locks have been **granted** to the session, or whether they are currently **blocked** and waiting on another session.

### Database

The database being used by the current process.

### Count

The number of locks of the type specified in the Lock Type column against the database specified in the Database column from the SPID specified in the SPID column.

### Index

The index being used by the current process (if any).

### Object Name

The object that is currently locked.

{% include links.html %}
