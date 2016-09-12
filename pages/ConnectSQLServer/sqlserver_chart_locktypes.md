---
title: Lock Types Chart
last_updated: July 29, 2016
summary: "The Lock Types chart shows lock statistics broken down by lock type."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_chart_locktypes.html
id: SQLActivity_Locks.LockTypesChart
folder: ConnectSQLServer
---


There is one line on the chart for each lock type:

* AllocUnit
* Application
* Database
* Extent
* File
* HoBT
* Index
* Key
* Metadata
* Object
* Page
* RID (Rows)
* Table

The following counters can be chosen by clicking the arrow next to the chart name:

### Waits per Second

the rate at which lock requests cannot be satisfied immediately and require the caller to wait before being granted the lock.

### Average Wait Time

the average wait time (in milliseconds) for each lock request that resulted in a wait.

### Lock Requests per Second

the number of lock requests and lock conversion requests per second.

### Timeouts per Second

the number of lock timeouts per second. By default, SQL Server never times out locks (they will wait forever). However many applications issue a SET LOCK_TIMEOUT statement to cause SQL Server to timeout their locks after the specified interval. This statistic shows how often these timeouts are being exceeded.

The **Details** sub-page of the **Sessions** drilldown can be used to view the Lock Timeout (**@@LOCK_TIMEOUT**) values for each connection.

### Deadlocks per Second

the number of lock requests per second that resulted in a deadlock. A deadlock occurs when session **A** requests a lock that conflicts with a lock already held by session **B**, and then session **B** requests a lock that conflicts with one session **A** holds. SQL Server chooses one session as the deadlock victim, cancels that connection and rolls back any updates they had done.


{% include links.html %}
