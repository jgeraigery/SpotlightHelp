---
title: Session Locks grid
last_updated: July 29, 2016
summary: "Shows all locks held or requested by the selected session."
sidebar: c_sqlazure_sidebar
id: SessionLocks.SessionLocksGrid
permalink: sqlazure_grid_sessionlocks.html
folder: ConnectSQLAzure
---



The Status column shows whether the locks have been **granted** to the session, or whether they are currently **blocked** and waiting on another session.

The details in this grid are:

## Lock Type

The type of the resource that is currently locked (Database, Table, Page, Row, Extent, etc.)

## Mode

The kind of lock being applied to the resource (Shared, Exclusive, Update, IntentShared, IntentExclusive, etc.)

## Status

The status of the lock (Blocked, Blocking, or blank (Granted)).

## Count

The number of locks of the type specified in the Lock Type column against the database specified in the Database column from the SPID specified in the SPID column.

## Index

The index being used by the current process (if any).

## Object Name

The object that is currently locked.


{% include links.html %}
