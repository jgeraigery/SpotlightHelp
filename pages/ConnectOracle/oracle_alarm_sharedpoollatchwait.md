---
title: ﻿Shared Pool Latch Wait Alarm
last_updated: July 29, 2016
summary: "Shared pool latches control access to the shared pool memory map."
sidebar: c_oracle_sidebar
permalink: oracle_alarm_sharedpoollatchwait.html
id: Home.SharedPool.Shared pool latch wait.alarm
folder: ConnectOracle
---


The primary cause of contention is excessive hard parsing. This can indicate the need to use bind variables or adjust the **CURSOR_SHARING** parameter.

To combat shared pool fragmentation:

* Flush the shared pool periodically using the **ALTER SYSTEM FLUSH SHARED POOL** command.
* Set a minimum value for the shared pool if you are using automatic SGA memory management. Alternatively, revert to manual memory management.
* Use **DBMS_SHARED_POOL** to prevent large objects from moving in and out of memory.





{% include links.html %}
