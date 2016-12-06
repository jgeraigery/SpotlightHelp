---
title: Activity drilldown
last_updated: July 29, 2016
summary: "Drilldown on summaries of recent activity on the Windows server."
sidebar: c_windows_sidebar
permalink: windows_drilldown_activity.html
folder: ConnectWindows
---



## How to open the Activity drilldown

From the Spotlight Client

1. Select the connection from the left Connections pane.
2. Click **Monitor \| Activity** from the ribbon.
   {% include imageClient.html file="tb_drilldown_sqlactivity.png" alt="Activity drilldown for Windows servers" %}

{% include tip.html content="Click for more information on using [Spotlight Charts][enterprise_display_charts] and [Spotlight Grids][enterprise_display_grids]." %}


## About the Activity drilldown

### Summary page
Investigate recent Windows activity.

#### Processor chart
Shows the percentage of Privileged and User Time.

High Privileged time means that the program is predominantly busy accessing resources through operating system requests.

High User time means that the program is predominantly CPU-bound with the program code itself.

#### Paging chart
Shows the rate at which pages are being swapped in and out of memory.

The Page ins value includes hard pages (paging requests that have to go to the paging file on disk) - not soft pages (requests for memory pages that are not in the program's working set, but still in memory).

The Page outs value shows the number of pages written to the paging file on disk.

A sustained high rate of paging can cause problems with overall system degradation due to disk thrashing and CPU load.

#### Memory chart
Shows how much physical memory (RAM) and Virtual Memory Windows is using.

Physical Memory usage will normally remain close to the total amount of physical memory installed on the system unless the amount of physical memory you have exceeds the amount of virtual memory that Windows is using.

Windows normally keeps some physical memory available (free) for immediate reuse.

Virtual Memory usage increases and decreases as Windows processes requests and gives up memory and as processes are started and stopped.

A steady increase in Virtual memory usage can indicate that a process on the system has a memory leak.

#### Processor Queue Length chart
Shows the total number of threads (program execution units) that are waiting to be run on ALL processors. A sustained processor queue length greater than ten can indicate processor congestion.

To view Server Work Queues for the individual CPUs in the system, see the CPUs page. For more information, see Windows Server \| CPU Drilldown.

#### Disk Queue Length chart
Shows the number of I/O requests that were queued for each logical disk.

Disk Queue Length indicates how heavily loaded a disk subsystem is. High queue lengths mean the disks are struggling to process the I/O load being put on them.

#### Network Packets chart
Shows the incoming and outgoing packet rates as an aggregate across all network cards in the system.



### Custom Counters page
Investigate Custom Counters.

#### Custom Counters chart
Shows data collected for any Windows custom counters that have been configured.

The chart shows only those counters that return numeric values.

#### Custom Counters grid
Shows data collected for any Windows custom counters that have been configured.



{% include links.html %}
