---
title: Spotlight Overview page for Hyper-V connections
last_updated: July 29, 2016
summary: "Diagnose bottlenecks and problem areas for a single Hyper-V connection."
tags: [overview_page,overview_page_for_each_connection_type]
sidebar: c_hyperv_sidebar
permalink: hyperv_drilldown_overview.html
folder: ConnectHyperv
---



## How to open (and Use) the Spotlight Overview page
The Spotlight Overview page can be opened from:
* [Spotlight Client][enterprise_display_overview]
* [Spotlight Mobile][mobile_overview]

## The Spotlight Overview page for a Hyper-V connection
The Spotlight Overview page is made up of components and flows tailored to the Hyper-V architecture.

## Components

### Status

 Show the condition of the virtual machine. Green indicates that no alarms have been raised. Yellow and red indicate that an alarm has been raised. Possible alarms on the status control include the connection failure alarm, heartbeat alarm and planned outage alarm.

During a planned outage, all controls on this page are disabled except Status. A **Monitored Server - Planned Outage** alarm is raised against the **Status** control.

### Version

Show the version of the Hyper-V server.


## Virtual machines grid

Use this grid to investigate the status of all virtual machines on the Hyper-V server.

### Name
 The name of the virtual machine. If a corresponding Windows connection exists for this virtual machine then click on the name to open the [Windows Server \| Overview page][windows_drilldown_overview].

### State
 Power state of the virtual machine. For example, Powered On, Powered Off, or Suspended.

### CPU Usage %
 Show the proportion of CPU on the Hyper-V server currently used by this virtual machine. Use this data to investigate virtual machines that are the top consumers of CPU.

### Allocated Memory (MB)
 Show the amount of memory the Hyper-V server has currently allocated to the virtual machine. Use this data to investigate virtual machines that are current top consumers of memory.

### Heartbeat
 Show the current status of communication between the virtual machine and the hypervisor.

The Heartbeat alarm is raised when the virtual machine has stopped responding to the hypervisor or is not responding at regular intervals.

To use this feature, ensure the heartbeat component of the hypervisor is enabled. Ensure the virtual machine operating system is compatible with the Hyper-V server version and has the necessary components to provide heartbeat data.

### Host
 The name of the physical machine hosting the virtual machine (the Hyper-V server). If a corresponding Windows connection exists for the host then click on the name to open the [Windows Server \| Overview page][windows_drilldown_overview].



{% include links.html %}
