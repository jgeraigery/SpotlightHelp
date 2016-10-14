---
title: Connection Details for VMware 
tags: [connection_details,connection_details_for_each_connection_type]
summary: "Specify the connection details for a VMware® connection to an ESX Server™ or VirtualCenter server hosting a Windows server®."
sidebar: c_vmware_sidebar
permalink: vmware_connect_details.html
folder: ConnectVMware
---


## How to enter / edit connection details

Use a Spotlight Client to enter / edit connection details.

From the Spotlight Client

1.  Click **Configure \| Connections**.
2.  Double click **Add new connection**.
3.  Fill in the connection details as follows.
4.  Click **Test** to test the connection.


## Address
 The IP address or hostname of the ESX server or VirtualCenter server hosting the Windows server.

If you have a VirtualCenter server then connect to that in preference to the ESX host. That way if the virtual machine migrates from one host to another the VirtualCenter server can still be interrogated for data for the virtual machine.

## Authentication
 The authentication (username and password) for Spotlight to use to connect to the VMware server. The user must have at least a read-only role for the ESX server or VirtualCenter server.

 {% include links.html %}
