---
title: CPU - Average CPU Usage alarm
summary: "The CPU - Average CPU Usage alarm becomes active when the average CPU utilization of the server exceeds a threshold."
sidebar: c_windows_sidebar
permalink: windows_alarm_cpu_averagecpuusage.html
folder: ConnectWindows
---

This value is taken over a specific number of background collections. Sustained high CPU utilization can adversely effect the performance of SQL Server and anything else using this server.

Note that since this is a Windows-based alarm, it can include CPU that was consumed by non-SQL Server processes.

When this alarm is current, you should:

* Look at the Spotlight on SQL Server \| Diagnostics drilldown \| CPU page to see possible causes of high CPU usage.
* Look at the Spotlight on SQL Server \| SQL Activity drilldown \| Sessions page to see which SQL Server users are currently
 executing SQL, and to determine the exact SQL that is running. If necessary, use the Session Trace sub-tab on active sessions.
* Look at the Spotlight on Windows \| Processes drilldown \| Processes page to see which Windows process is consuming the CPU.
* Look at the Spotlight on Windows \| Memory drilldown \| Paging Activity page to see if there
  is a high paging rate. High paging rate can cause inflated CPU utilization. If this is the case, adding more memory to the system may overcome the problem.
* Consider upgrading to a faster CPU or adding processors to your server.
