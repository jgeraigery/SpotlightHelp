---
title: ﻿Locks - Blocked Processes alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "The Locks - Blocked Processes alarm is raised when a block persists for longer than the time specified in the threshold. The default is 120 seconds."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_locks_blockedprocesses.html
id: btnLocks.Seconds session blocked.alarm
folder: ConnectSQLServer
---


Blocking occurs when there is at least one SQL Server session that is waiting on a lock held by another session. The waiting user is said to be 'blocked' by the one holding the lock, and will wait until either the blocking user commits/rolls back (and therefore frees up the resource being waited on), or the blocked user's application timeout expires, in which case the blocked command will be canceled.

Note: Many applications do not set a timeout and will wait forever for locks to be freed.

Excessive blocking can be a major cause of poor application performance, as the user of an application often does not realize that they are waiting on a lock held by another user. From their point of view, it often seems like their application has stopped responding.

## When the alarm is raised

Look at:

The Blocking page on the SQL Server \| SQL Activity Drilldown to see who is blocking whom, and what resources are involved (for example, database and table names etc). In the case of multiple blocks where there are blocked sessions that are also blocking others, this page will show you who is at the head of the chain and is, therefore, probably the root cause of all the blocking. This page also shows how many sessions were blocked over time.

You can kill any session and free up any locks it holds. Select the session and click Kill session.



The Sessions page on the SQL Server \| SQL Activity Drilldown to view the most recent SQL for the sessions involved in the blocking. This can help track down sub-optimal SQL that may contribute to the locking problem.

You can kill any session and free up any locks it holds. Select the session and click Kill session.



The Locks page on the SQL Server \| SQL Activity Drilldown to view all locks in the system. This will show you all SQL Server locks currently granted or requested.

You can kill any session and free up any locks it holds. Select the session and click Kill session.



## Configuration

You can configure this alarm to ignore certain values. For more information, see Do not alarm for certain values.
You can configure different alarm severities for specific blocked sessions. For more information, see Configure an alarm. The key for this alarm is the SPID of the blocked session. You can see this information on the Blocking page of the SQL Server \| SQL Activity Drilldown.

{% include links.html %}
