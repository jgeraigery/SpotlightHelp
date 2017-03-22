---
title: Memory drilldown
last_updated: July 29, 2016
summary: "Drilldown on recent physical and virtual memory usage."
sidebar: c_windows_sidebar
permalink: windows_drilldown_memory.html
folder: ConnectWindows
---




## How to open the Memory drilldown

From the Spotlight Client

1. Select the connection from the left Connections pane.
2. Click **Monitor \| Memory** from the ribbon.
   {% include imageClient.html file="tb_drilldown_memory.png" alt="Memory drilldown for Windows servers" %}

{% include tip.html content="Click for more information on using [Spotlight Charts][enterprise_display_charts] and [Spotlight Grids][enterprise_display_grids]." %}


## About the Memory drilldown


### Summary page

Investigate recent memory usage.

#### Physical Memory chart
Shows how much physical memory (RAM) Windows is using.

Physical memory usage normally remains close to the total amount of physical memory installed on the system unless the amount of physical memory exceeds the amount of virtual memory that Windows is using. Windows normally keeps some physical memory available (free) for immediate reuse.

#### Virtual Memory chart
Shows the total amount of memory in use by the program. This includes Physical Memory and space in the paging file. A steady increase in virtual memory usage can indicate that a process on the system has a memory leak.

#### Paging chart
Shows the rate at which pages are being swapped in and out of memory. The chart displays two data series:

**Page ins** - The Page ins value includes hard pages (paging requests that have to go to the paging file on disk) NOT soft pages (requests for memory pages that are not in the program's working set, but still in memory).

**Page outs** - The Page outs value provides the number of write requests to the paging file on disk.

A sustained high rate of paging can cause problems with overall system degradation due to disk thrashing and CPU load.

#### Physical Memory Usage chart
Shows how Windows is using physical memory in the following areas:)

**Free** - Available physical memory not currently in use.

**Processes** - Memory being used by Windows processes.  This is normally the largest area by a significant degree.

**Kernel** - Memory being used by the Windows kernel.

**File Cache** - Memory that Windows is using to cache disk files in order to speed reads and writes.


### Paging activity page

Investigate recent Windows paging activity and page files.

#### Page File Transfers chart
Shows recent Windows paging activity. It shows the number of disk reads per second to and from the page files.

Paging occurs when the Windows Virtual Memory Manager moves data or code between physical memory and disk. Sustained high paging rates can degrade system performance significantly.

#### Page Faults chart
Shows the rate at which Windows is processing page faults. It compares the two types of page fault (soft and hard) and makes it easy to see the ratio between them.

A page fault occurs when a process references a page that is not in that processes working set (the set of pages visible to that process in physical memory).  When this happens, the process has to wait while the Windows Virtual Memory Manager retrieves the page from virtual memory.

* A soft page fault occurs when Windows finds the required page somewhere in physical memory.
* A hard page fault occurs when the page is not in physical memory and Windows has to read it from the page files.  This is by far the more expensive of the two as it involves disk I/O.  Hard page faults are the cause of paging and can degrade performance significantly.

#### Page Files grid
Shows information about the page files in use by Windows.

Page files are disk files that the Windows Virtual Memory Manager uses to back up physical memory. Code and data is moved between physical memory and the page files as required, giving processes on the system the illusion that there is much more physical memory available than there really is. The process of moving data and code between memory and disk is called paging.


### Cache page

Investigate detailed information about system cache.

#### Cache Hit Rate chart
Shows a recent summary of the percentage of file requests that are satisfied by the file cache, and that do not require a disk read.

#### Cache Size chart
Shows the recent history of memory allocated to the file cache.)

Memory allocated to the file cache is dynamic. This is controlled by the Disk Cache Manager, and will alter the level of memory based upon how much physical memory is being used by other applications and is available in the system.

#### Physical Cache IO chart
Shows the number of Reads and Writes being made to the file cache.

#### Cache Faults chart
This chart displays the number of faults that occur when a requested page is not found in the file system cache, and must be retrieved from elsewhere.

The chart displays the number of faults, NOT the number of pages faulted in each operation.



### Virtualized memory page (VMware server host)

Investigate Memory usage for the virtual machine.

#### Memory Starvation
Shows whether the repossessed memory and active memory are at levels that could affect the performance of the virtual machine.

The values on this chart are shown as percentages and are made up of memory reclaimed by ESX (Repossessed), memory used by the virtual machine (Active Memory), and memory available for the virtual machine (Idle).

* **Repossessed** - Percentage of memory reclaimed by ESX, via ballooning and swapping, to allocate to other virtual machines.
* **Idle** - Percentage of memory remaining after repossessed memory and active memory have been deducted.
  A low idle percentage indicates that the performance of the virtual machine may be affected because it is not receiving the memory it needs, or its memory is currently swapped to disk.
* **Active Memory** - Percentage of guest physical memory that ESX estimates is actively being used by the virtual machine.

#### Memory Reposessed
Shows the amount of memory reclaimed by ESX.

* **Balloon** - Amount of memory reclaimed by ESX via ballooning to give to other virtual machines.

    For memory to be reclaimed via ballooning, VMware Tools must be installed on the virtual machine.

* **ESX Swapped** - Amount of memory reclaimed by ESX via swapping to give to other virtual machines.
    Memory reclaimed via swapping can affect the performance of the virtual machine significantly more than if the memory is reclaimed via ballooning.


### Virtualized Memory page (Hyper-V server host)

Investigate Memory usage for the virtual machine.

#### Average Memory Pressure
Show the proportion of memory on the Hyper-V server consumed by all the virtual machines on the server over time.

Ideally the proportion should be consistently reported around 80, definitely below 100 and no spikes above 100. Some highly tuned systems that are very dense may run higher than 80.

So long as the proportion stays under 100 there is enough available memory to service all virtual machines on the Hyper-V server. If the proportion exceeds 100 then virtual machine(s) are doing paging operations with the virtual machine itself and there will be performance degradation.

This chart is applicable to Hyper-V servers configured for dynamic memory allocation. If the Hyper-V server is configured for static memory assignment then no data is available. Dynamic memory allows Hyper-V administrators to assign a dynamic allocation of memory to a virtual machine that draws from a pool of memory on the Hyper-V server.


{% include links.html %}
