---
title: CPU - Processor Queue Length alarm
tags: [windows_alarms]
last_updated: July 29, 2016
summary: "The CPU - Processor Queue Length alarm becomes active when the number of Windows threads waiting for CPU resources exceeds a threshold. Sustained high processor queue length is a good indicator that you have a CPU bottleneck."
sidebar: c_windows_sidebar
permalink: windows_alarm_cpu_processorqueuelength.html
id: Processor_Queue_Length.alarm
folder: ConnectWindows
---



{% include note.html content="Since this is a Windows-based statistic, it will include CPU that was consumed by non-SQL Server processes." %}

If you are running the Diagnostic Server on the machine you are monitoring, the Processor Queue Length shown here can be artificially high, especially on single-processor machines. Since Spotlight is a multi-threaded application, the process of running its data collection queries causes extra Spotlight client threads to be scheduled for execution, resulting in a higher than normal Processor Queue Length figure and the raising of this alarm.

When this alarm is current:

* Use the Windows Server \| Activity drilldown \| Summary page \| Processor Queue Length chart. This will show you how long the Processor Queue Length has been high.
* Use the Windows Server \| Processes drilldown \| Processes page to see which Windows process is consuming the CPU. SQL Server is shown as the process called **sqlservr**
* Use the SQL Server \| SQl Activity drilldown \| Summary page to determine how much of the CPU is being consumed by SQL Server.

* If you determine from the steps above that SQL Server is consuming most of the CPU, look at the SQL Server \| SQL Activity drilldown \| Sessions page to see which SQL Server users are currently consuming the most CPU.

  On the Sessions page, select the sessions that have the highest CPU figure to see the exact SQL statement that the user is currently running. If necessary, use the Session Trace sub-tab to see further information about the active sessions.

* Consider upgrading to a faster CPU or adding processors to your server.

* Use the Windows Server \| Memory drilldown \| Paging Activity page to see if there is a high paging rate. High paging rate can cause inflated CPU utilization. Adding more memory to the system may overcome the problem.

If SQL Server is consuming most of the CPU and your system supports many concurrent users, you might benefit from SQL Server's lightweight pooling option, which causes SQL Server sessions to be scheduled as fibers rather than threads. On some heavily loaded systems this can save a small amount of CPU. Ensure you test this properly, because on some systems it can actually increase SQL Server's CPU demands. This option can be changed from Spotlight's SQL Server Configuration drilldown. Changes to this option do not take effect until SQL Server is stopped and restarted.
