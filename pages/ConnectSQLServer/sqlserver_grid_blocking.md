---
title: Blocking Grid
last_updated: July 29, 2016
summary: "The Blocking grid shows all connections that are currently either waiting on locks held by others or are causing others to wait, highlighting who is waiting on whom and the resources involved."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_blocking.html
id: SQLActivity_Blocking.BlockingGrid
folder: ConnectSQLServer
---



You can view session details by right-clicking an entry in the grid and selecting **View Session Details** from the shortcut menu.

The hierarchy in this tree diagram represents the **blocking chains**. It shows who is blocking whom and makes it easy to see who is at the head of the chain and is the root cause of all the blocking.

SQL Server sessions can be closed by right-clicking and selecting **Kill this Session**. This will terminate the entire connection (SPID), not just the lock you selected.

The tree will show one entry for each session that is blocked, and one for each session that is blocking another but is not blocked itself. Sessions at the top of the tree (those that do not have a "parent" in the tree) are at the head of the blocking chain.

The Blocking grid is not refreshed automatically. To refresh the Blocking grid, click **Refresh**.

Available columns include:

## SPID

The unique session number for the session owning or requesting the lock.

## Wait Time

How long this session has been waiting for the lock (measured in milliseconds). This shows **0** if the session is not waiting.

## Type

The type of the lock request that is waiting (Database, Table, Page, Row, Key, Extent, etc.).

## Resource

The resource that is in conflict. This often identifies a database and table.

The data in the Resource column is reported directly from SQL Server and, for performance reasons, is not resolved to actual resource names during normal data collection. To resolve the data to a more readable form, click the Question Mark  button.

## Command

The current or previous command executed.

## SQL User

Identifies the user associated with the SPID.

## Program

The application program that the user is using (for example, Microsoft Access).

## Win User

Identifies the user associated with the SPID.

## CPU

The total amount of CPU consumed by the session so far. Can be useful when deciding which sessions to kill.

## I/O

The total amount of I/O consumed by the session so far. Can be useful when deciding which sessions to kill.

## Host Name

The name of the client computer.

## Status

The status of the session (Blocked, Blocking or both). For sessions at the head of the blocking chain (those that are not blocked), this will also indicate if the session is Runnable or Sleeping.

## Session SQL

Displays the SQL belonging to the session that is blocked and/or blocking.

## DB Name

The name of the database.


<note type="note">You can use Dell SQL Optimizer (if installed) to tune the SQL for the selected session.
To do this, right-click a row in the grid and select Optimize SQL.</note>


{% include links.html %}
