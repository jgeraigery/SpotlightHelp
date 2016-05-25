---
title: Virtual machines grid
keywords: mydoc
summary: "Use this grid to investigate the status of all virtual machines on the VMware server."
sidebar: c_vmware_sidebar
toc: false
permalink: /vmware_grid_virtualmachines/
---


Column | Description
-------|------------
Name | Name of the virtual machine.
State | Power state of the virtual machine. For example, Powered On, Powered Off, or Suspended.
Host | Name of the physical machine that hosts the virtual machine.
Host CPU - MHz | Amount of CPU the virtual machine is using on the host.
Host Memory - MB | Amount of memory the virtual machine is using on the host.
Heartbeat | The status of communication between VMware VirtualCenter and the VMware Tools on the virtual machine.<br>Green: Guest operating system is responding normally.<br>Yellow: Intermittent heartbeat. May be due to guest load.<br>Red: No heartbeat. Guest operating system may have stopped responding.<br>Gray: VMware Tools are not installed or are not running.
