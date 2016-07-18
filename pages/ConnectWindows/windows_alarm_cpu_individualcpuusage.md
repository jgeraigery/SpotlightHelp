---
title: CPU - Individual CPU Usage alarm
summary: "The Windows CPU - Individual CPU Usage alarm is activated when the average CPU utilization of a single processor exceeds a threshold."
sidebar: c_windows_sidebar
permalink: windows_alarm_cpu_individualcpuusage.html
folder: ConnectWindows
---

This value is taken over a specific number of background collections.

Sustained high CPU utilization of a single processor on multiprocessor systems indicates that process threading may not be functioning efficiently.

When this alarm is current, you should look at the Processes page on the Processes drilldown to find out which Windows process is consuming the CPU.

The process:

* May not have its process affinity set correctly. (You can set this via the Windows Task Manager.)
* May not be designed for multiprocessor threading.
* May not be configured correctly.
