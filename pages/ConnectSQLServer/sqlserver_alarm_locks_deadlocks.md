---
title: ﻿Locks - Deadlocks Alarm
last_updated: July 29, 2016
summary: "The Locks - Deadlocks alarm is raised when the number of deadlocks that have occurred since the previous data collection exceeds a threshold."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_locks_deadlocks.html
id: btnLocks.Deadlocks per second.Alarm
folder: ConnectSQLServer
---


A Deadlock occurs when multiple SQL Server sessions request conflicting locks in such a way that two locks are blocked by each other. The simplest example is with two sessions. Imagine the following sequence of events:

* Session 1 updates Row1
* Session 2 updates Row2
* Session 1 tries to update Row2 - it waits because the row is locked by Session 2
* Session 2 tries to update Row1 - it waits because the row is locked by Session 1

Here we have Session 1 waiting on a lock held by Session 2 and Session 2 waiting on one held by Session 1. In this example, both sessions would wait forever, so SQL Server chooses one of them as the deadlock victim, kills their connection and rolls back their updates so that the other can continue. The user that is rolled back will often receive an error message.

The example above is the simplest type of deadlock, involving only two sessions. However, deadlocks can involve many more sessions, and it can be very difficult to track down the root cause of all the trouble. Spotlight Enterprise provides some features to make this task easier.

## When the alarm is raised

Look at the Locks tab on the SQL Server \| SQL Activity Drilldown to view the Deadlocks/sec counter on the Lock Types chart. This shows you how frequently deadlocks are occurring in your system.

{% include links.html %}
