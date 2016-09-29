---
title: ﻿Tablespace Percent Used Alarm
last_updated: July 29, 2016
summary: "This alarm fires when the percentage of a used tablespace exceeds a predefined threshold."
sidebar: c_oracle_sidebar
permalink: oracle_alarm_tablespacepercentused.html
id:
folder: ConnectOracle
---


If at least one datafile in the tablespace is configured to extend automatically (Autoextend property is set to ON), this property is taken into account, and the alarm will take into account the available space in the file system or ASM.

A tablespace is a set of datafiles that contain data. A tablespace whose storage place becomes full can no longer store additional data; as a result, the application's functionality may be adversely affected. In Oracle12C and higher versions this alarm can also be invoked at the PDB level

{% include links.html %}
