---
title: Hyper-V Virtual Machine Heartbeat Alarm
last_updated: July 29, 2016
summary: "The Hyper-V Virtual Machine Heartbeat alarm is raised when the virtual machine has stopped responding to the hypervisor or is not responding at regular intervals."
sidebar: c_hyperv_sidebar
permalink: hyperv_alarm_virtualmachineheartbeat.html
folder: ConnectHyperv
---



{% include note.html content="To use this feature, ensure the heartbeat component of the hypervisor is enabled. Ensure the virtual machine operating system is compatible with the Hyper-V server version and has the necessary components to provide heartbeat data." %}

## When the alarm is raised

Severity | Description
---------|------------
Information | The guest operating system is not installed or has not yet been contacted. The virtual machine is starting up, stopping, stopped, dormant or relocating.
Low | The heartbeat is degraded or the virtual machine is receiving maintenance.
Medium | The heartbeat is stressed or the virtual machine may have stopped responding.
High | The heartbeat has failed, is predicting failure or an error has been reported.


{% include links.html %}
