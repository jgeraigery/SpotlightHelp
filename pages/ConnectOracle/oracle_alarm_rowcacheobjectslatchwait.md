---
title: ﻿Row Cache Objects Latch Wait Alarm
last_updated: July 29, 2016
summary: "The row cache objects latch protects the contents of the row cache; the section of the shared pool to cache dictionary information."
sidebar: c_oracle_sidebar
permalink: oracle_alarm_rowcacheobjectslatchwait.html
id:
folder: ConnectOracle
---


Causes of contention:

* High rates of DDL associated with the recursive SQL that maintains internal Oracle information such as space management and undo management.
* Other potential causes are many and varied. Track down the root cause of the problem by identifying the SQL concerned or the areas of the row cache associated with the contention.





{% include links.html %}
