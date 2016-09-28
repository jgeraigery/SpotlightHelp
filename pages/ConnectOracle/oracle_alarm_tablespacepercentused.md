---
title: ﻿Tablespace Used Percentage Alarm
last_updated: July 29, 2016
summary: "The Lock Wait alarm occurs when the proportion of time spent waiting for locks exceeds a threshold."
sidebar: c_oracle_sidebar
permalink: oracle_alarm_tableusedpercentage.html
id:
folder: ConnectOracle
---


Lock waits can occur for a number of reasons, sometimes including internal database contention. However, the most common category of locks are those taken out on table rows or index entries during an update, insert, or delete.


Alarm Description
This alarm fires when the percentage of a used tablespace exceeds a predefined threshold. If at least one datafile in the tablespace is configured to extend automatically (Autoextend property is set to ON), this property is taken into account, and the alarm will take into account the available space in the file system or ASM. A tablespace is a set of datafiles that contain data. A tablespace whose storage place becomes full can no longer store additional data; as a result, the application's functionality may be adversely affected. In Oracle12C and higher versions this alarm can also be invoked at the PDB level

{% include links.html %}
