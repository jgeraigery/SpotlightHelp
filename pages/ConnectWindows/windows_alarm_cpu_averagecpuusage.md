---
title: CPU - Average CPU Usage alarm
tags: [windows_alarms]
last_updated: July 29, 2016
summary: "The CPU - Average CPU Usage alarm is active when the average CPU utilization of the server exceeds a threshold. This value is taken over a specific number of background collections. Sustained high CPU utilization can adversely effect the performance of SQL Server and anything else using this server."
sidebar: c_windows_sidebar
permalink: windows_alarm_cpu_averagecpuusage.html
id: average_percentage_cpu_used.alarm
folder: ConnectWindows
---



{% include note.html content="Since this is a Windows-based alarm, it can include CPU that was consumed by non-SQL Server processes." %}

## When this alarm is current:

* Look at the Windows Server \| Processes drilldown \| Processes page to see which Windows process is consuming the CPU.
* Look at the Windows Server \| Memory drilldown \| Paging Activity page to see if there is a high paging rate. High paging rate can cause inflated CPU utilization. If this is the case, adding more memory to the system may overcome the problem.
* Consider upgrading to a faster CPU or adding processors to your server.

## Connections to SQL Server:

* Look at the SQL Server \| Workload Analysis drilldown and select the **CPU** resource to see possible causes of high CPU usage.
* Look at the SQL Server \| SQL Activity drilldown \| Sessions page to see which SQL Server users are currently
 executing SQL, and to determine the exact SQL that is running. If necessary, use the Session Trace sub-tab on active sessions.

If SQL Server is consuming most of the CPU, and your system supports many concurrent users, you might benefit from SQL Server's lightweight pooling option, which causes SQL Server sessions to be scheduled as fibers rather than threads. On some heavily-loaded systems, this can save a small amount of CPU. Ensure you test this properly, because on some systems it can actually increase SQL Server's CPU demands.

This option can be changed from the SQL Server \| Configuration drilldown. Changes to this option do not take effect until the SQL Server instance is stopped and restarted. 

{% include tip.html content="If these parameters are not displayed in the SQL Server \| Configuration drilldown \| Configuration grid and you are connected to a SQL Server 2005 instance or later, turn the **Show Advanced Options** parameter on. You can do this from the Configuration grid." %}


## Connections to SQL Server Analysis Services:

* Look at the Analysis Services \| Activity Drilldown \| Sessions page. Sort the Sessions grid by **Last Command CPU Time** to see which sessions are consuming the most CPU.
