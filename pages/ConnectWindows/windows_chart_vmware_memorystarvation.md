---
title: Memory starvation (VMware)
last_updated: July 29, 2016
summary: "Memory Starvation shows whether the repossessed memory and active memory are at levels that could affect the performance of the virtual machine."
sidebar: c_windows_sidebar
permalink: windows_chart_vmware_memorystarvation.html
id: VirtualizedMemory.chtMemoryStarvation
folder: ConnectWindows
---



## Repossessed

Percentage of memory reclaimed by ESX, via ballooning and swapping, to allocate to other virtual machines.

## Idle

Percentage of memory remaining after repossessed memory and active memory have been deducted. This is the memory available for the virtual machine.

A low idle percentage indicates that the performance of the virtual machine may be affected because it is not receiving the memory it needs, or its memory is currently swapped to disk.

## Active Memory

Percentage of guest physical memory that ESX estimates is actively being used by the virtual machine.



{% include links.html %}
