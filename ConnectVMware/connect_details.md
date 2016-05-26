---
title: Connection details
keywords: mydoc
summary: "Specify the connection details for a VMware® connection to an ESX Server™ or VirtualCenter server hosting a Windows server®."
sidebar: c_vmware_sidebar
toc: false
permalink: /vmware_connect_details/
---


## Requirements

VMware® ESX infrastructure. VMware vCenter 2.5 (or later). VMware ESX Server™ 4.0 (or later)

The username used to connect to the virtual guest machine must have at least a read-only role.

Ensure any firewall is configured to open TCP port 135.


## Address
 The IP address or hostname of the ESX server or VirtualCenter server hosting the Windows server.

If you have a VirtualCenter server then connect to that in preference to the ESX host. That way if the virtual machine migrates from one host to another the VirtualCenter server can still be interrogated for data for the virtual machine.

## Authentication
 The authentication (username and password) for Spotlight to use to connect to the VMware server. The user must have at least a read-only role for the ESX server or VirtualCenter server.
