---
title: Memory reposessed (VMware)
last_updated: July 29, 2016
summary: "Memory Repossessed shows the amount of memory reclaimed by ESX."
sidebar: c_windows_sidebar
permalink: windows_chart_vmware_memoryreposessed.html
id: VirtualizedMemory.chtMemoryRepossessed
folder: ConnectWindows
---


## Balloon

Amount of memory reclaimed by ESX via ballooning to give to other virtual machines.

<note type="note">For memory to be reclaimed via ballooning, VMware Tools must be installed on the virtual machine.</note>

## ESX Swapped

Amount of memory reclaimed by ESX via swapping to give to other virtual machines.

Memory reclaimed via swapping can affect the performance of the virtual machine significantly more than if the memory is reclaimed via ballooning.


{% include links.html %}
