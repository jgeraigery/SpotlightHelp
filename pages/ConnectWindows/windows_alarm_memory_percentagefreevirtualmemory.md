---
title: Memory - Percentage Free Virtual Memory Alarm
last_updated: July 29, 2016
summary: "This alarm is activated when the average free virtual memory drops below a threshold."
sidebar: c_windows_sidebar
permalink: windows_alarm_memory_percentagefreevirtualmemory.html
id: SoWHomePage.gauVirtMem.Used virtual memory.alarm
folder: ConnectWindows
---


This value is taken over a specific number of background collections.

## When this alarm is current you should:

* Look at the Processes page on the Processes drilldown.
  Look at the Virtual Memory column to see which applications are using the most virtual memory.
  Some applications (such as Microsoft Exchange or Microsoft SQL Server) can have their memory utilization limited.
* Close any superfluous processes.
* Look at increasing the size of the page file.
* Look at increasing the amount of RAM in the machine.
