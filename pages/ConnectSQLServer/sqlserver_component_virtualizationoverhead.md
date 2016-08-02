---
title: ﻿Virtualization Overhead
last_updated: July 29, 2016
summary: "In a virtual environment the physical CPU of a host is shared by virtual machines and the hypervisor. Multiple processes may want to use the physical CPU of the host at the same time. The virtual machines may have to wait to be scheduled on a CPU."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_component_virtualizationoverhead.html
folder: ConnectSQLServer
---



## Gauge

Show the percentage of CPU that is unavailable to this virtual machine because it is being consumed either by other virtual machines or by VMware itself. The amount of ready time is shown as a percentage of the theoretical maximum CPU available to the virtual machine.

Applicable to Windows Servers hosted on VMWare.

## Wait Time in nanoseconds

Show the average time the virtual machine spent waiting for CPU over the collection interval (average 5 minutes). The average queue time should remain under 60,000ns. If the average queue time exceeds 60,000ns then a Hyper-V CPU wait time per dispatch alarm is raised. A high alarm is raised if the average queue time exceeds 100,000ns. See also Windows Server CPU Drilldown.

The Hyper-V - Virtual Overhead alarm is raised on excessive CPU being used by the hypervisor on this virtual machine.

Applicable to Windows Servers hosted on Hyper-V.

## Not Virtualized

The Windows Server is not hosted on a virtual machine or the virtual machine is unknown. For more information, see the Windows Server Connection Details.

{% include links.html %}
