---
title: ﻿Blocked Processes
last_updated: July 29, 2016
summary: "Shows the number of sessions that are waiting on locks held by others."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_component_blockedprocesses.html
id: btnLocks
folder: ConnectSQLServer
---

Blocking in SQL Server occurs when a session that was performing some task is unable to progress because it must wait on a resource that is currently being used by another session. The resource that is being waited on can be either a physical structure like a lock on a table or an internal SQL Server resource such as a latch.

The **SQL Activity drilldown \| Blocking page** shows details about the current blocks.

See also the The **SQL Activity drilldown \| Deadlocks page**.

{% include links.html %}
