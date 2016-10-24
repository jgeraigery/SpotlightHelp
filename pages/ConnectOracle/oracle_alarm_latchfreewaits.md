---
title: ﻿Latch Free Waits Alarm
last_updated: July 29, 2016
summary: "Latches are Oracle internal locking mechanisms. They prevent multiple sessions from updating the same item simultaneously within Oracle shared memory (SGA). If a session needs to acquire a latch that is held by another session, a latch free wait may occur."
sidebar: c_oracle_sidebar
permalink: oracle_alarm_latchfreewaits.html
id: Home.SharedServers.Latch free waits.alarm Home.DedicatedServers.Latch free waits.Alarm
folder: ConnectOracle
---


The presence of latch free waits may indicate a bottleneck within the SGA. (The specific action depends on the latch.)

For more information, see the help topic **Relieve latch contention**.

{% include links.html %}
