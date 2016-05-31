---
title: Virtual machines grid
keywords: mydoc
summary: "Use this grid to investigate the status of all virtual machines on the Hyper-V server."
sidebar: c_hyperv_sidebar
toc: false
permalink: /hyperv_grid_virtualmachines/
---


Column | Description
-------|------------
Name | The name of the virtual machine. If a corresponding Windows connection exists for this virtual machine then click on the name to open the Spotlight Overview page for the Windows Server.
State | Power state of the virtual machine. For example, Powered On, Powered Off, or Suspended.
CPU Usage % | Show the proportion of CPU on the Hyper-V server currently used by this virtual machine. Use this data to investigate virtual machines that are the top consumers of CPU.
Allocated Memory (MB) | Show the amount of memory the Hyper-V server has currently allocated to the virtual machine. Use this data to investigate virtual machines that are current top consumers of memory.
Heartbeat | Show the current status of communication between the virtual machine and the hypervisor. <br><br>The Heartbeat alarm is raised when the virtual machine has stopped responding to the hypervisor or is not responding at regular intervals. <br><br> To use this feature, ensure the heartbeat component of the hypervisor is enabled. Ensure the virtual machine operating system is compatible with the Hyper-V server version and has the necessary components to provide heartbeat data.
Host | The name of the physical machine hosting the virtual machine (the Hyper-V server). If a corresponding Windows connection exists for the host then click on the name to open the Spotlight Overview page for the Windows Server.
