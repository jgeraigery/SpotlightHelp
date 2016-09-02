---
title: Sessions
last_updated: July 29, 2016
summary: "The Sessions grid provides resource usage and activity information for current sessions on the server."
sidebar: c_analysisservices_sidebar
permalink: analysisservices_grid_sessions.html
id: Activity_Sessions.SessionsGrid
folder: ConnectAnalysisServices
---

{% include note.html content="All times shown in this grid are displayed as Greenwich mean time (GMT)." %}


## SPID

The session ID.

## Connection ID

The connection identifier for the session.

## User Name

The session user name.

## Current Database

The name of the database that is being used by the current command execution, or the database that was used by the last command executed.

## Last Command Start Time

The date and time when the last command initiated its execution.

## Last Command End Time

The date and time when the last command finished its execution.

## Last Command Elapsed Time

The elapsed time, in milliseconds, since the end of the last command executed.

## Last Command

The text of the current command executing or the last command executed.

## Last Command CPU Time

The CPU time, in milliseconds, consumed by the last command.

## Start Time

The date and time the session started.

## Elapsed Time

Elapsed time, in milliseconds, since the start of the session.

## Idle Time

The idle time, in milliseconds, since the start of the session.

## Used Memory

The current size of memory used by the session in kilobytes.

## Status

The activity status of the session. 0 = Idle,1 = Active, 2 = Blocked.

## Reads

The accumulated number of disk reads since the start of the session.

## Writes

## Reads KB

The accumulated value of data read from disk, in kilobytes, since the start of the session.

## Write KB

The accumulated value of data written to disk, in kilobytes, since the start of the session.

## Command Count

The number of commands that started execution since the beginning of the session.

## Session ID

The session unique identifier, as a GUID.


{% include links.html %}
