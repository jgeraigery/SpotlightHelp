---
title: ﻿Zombie Processes Alarm
last_updated: July 29, 2016
summary: "The Zombie button in the CPU panel shows the number of terminated child processes that have not been acknowledged by their parent process."
sidebar: c_unix_sidebar
permalink: unix_alarm_zombieprocesses.html
id:
folder: ConnectUnix
---




A high level of zombie processes is indicative of the presence of an inferior program, or an entry in /etc/inittab (or equivalent) preventing init from completing its startup sequence.

The type of alarm that is activated is determined by the number of zombie processes waiting to be exited.





{% include links.html %}
