---
title: Memory - Physical Memory Available alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "The Memory - Physical Memory Available alarm is activated when the available memory drops below a threshold."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_memory_physicalmemoryavailable.html
id: sowhomepage.gauphysram.free physical memory.alarm
folder: ConnectSQLServer
---



The Memory - Physical Memory Available alarm is activated when the available memory drops below a threshold. This can result in:

* Applications being unable to secure additional memory.
* New programs being unable to open successfully.
* General performance degradation due to excessive paging.

## When the alarm is raised

Look at the Processes page in the Windows Server | Processes Drilldown. Check the Phys MB column for processes using excessive amounts of memory. You can:
* Close those applications using excessive memory.
* Change the maximum memory usage setting for those applications using excessive memory. Refer to the relevant documentation to find out if this setting is supported by the application.
Purchase more physical memory for your system.
Determine if any programs have a memory leak. To do this:
1. Restart the Windows Server to ensure fresh memory usage by all applications.
2. Use the Microsoft Performance Monitor tool and set the update interval to 10 minutes.
3. Add the Working Set Peak counter for all applications from the Process object.
4. Leave the application running on the system overnight.
5. If there is a memory leak that can be viewed in a day, it will show up with the Working Set Peak graph for one of the applications rising smoothly. If the results are inconclusive after a day, some system applications that have a memory leak may exhibit the behavior over a week or more. Adjust the update interval to accommodate the extended period (update once per hour or more).

{% include links.html %}
