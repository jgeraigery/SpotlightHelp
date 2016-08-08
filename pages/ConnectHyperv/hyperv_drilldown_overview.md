---
title: Hyper-V connection display
last_updated: July 29, 2016
summary: "Show the components and virtual machines grid for the Hyper-V connection."
sidebar: c_hyperv_sidebar
permalink: hyperv_drilldown_overview.html
folder: ConnectHyperv
---

## How to open the Hyper-V connection display (Spotlight Client)

From the left Connections pane, click on the connection name.

Click on the connection name to show the components and virtual machines grid for the Hyper-V connection.


## Components

### Status

 Show the condition of the virtual machine. Green indicates that no alarms have been raised. Yellow and red indicate that an alarm has been raised. Possible alarms on the status control include the connection failure alarm, heartbeat alarm and planned outage alarm.

During a planned outage, all controls on this page are disabled except Status. A Monitored Server - Planned Outage alarm is raised against the Status control.

### Version

Show the version of the Hyper-V server.


## Virtual machines grid

Use this grid to investigate the status of all virtual machines on the Hyper-V server.

### Name
 The name of the virtual machine. If a corresponding Windows connection exists for this virtual machine then click on the name to open the Windows Server | Home Page

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
 The name of the physical machine hosting the virtual machine (the Hyper-V server). If a corresponding Windows connection exists for the host then click on the name to open the Windows Server \| Home Page.



{% include links.html %}
