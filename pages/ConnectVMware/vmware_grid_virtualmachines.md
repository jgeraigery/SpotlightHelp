---
title: Virtual Machines grid
tags: [vmware_overview]
summary: "Use this grid to investigate the status of all virtual machines on the VMware server."
sidebar: c_vmware_sidebar
permalink: vmware_grid_virtualmachines.html
id: Home.grdHome
folder: ConnectVMware
---


## Name

Name of the virtual machine.

## State

Power state of the virtual machine. For example, Powered On, Powered Off, or Suspended.

## Host

Name of the physical machine that hosts the virtual machine.

## Host CPU - MHz

Amount of CPU the virtual machine is using on the host.

## Host Memory - MB

Amount of memory the virtual machine is using on the host.

## Heartbeat

The status of communication between VMware VirtualCenter and the VMware Tools on the virtual machine.

Green | Guest operating system is responding normally.
Yellow | Intermittent heartbeat. May be due to guest load.
Red | No heartbeat. Guest operating system may have stopped responding.
Gray | VMware Tools are not installed or are not running.

{% include links.html %}
