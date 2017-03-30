---
title: Connection Details for VMware
tags: [connection_details,connection_details_for_each_connection_type]
summary: "Monitor a VMware connection to an ESX Server or VirtualCenter server hosting a Windows server by supplying the following connection details to Spotlight."
sidebar: c_vmware_sidebar
permalink: vmware_connect_details.html
folder: ConnectVMware
---


## How to enter / edit connection details

Use a Spotlight Client to enter / edit connection details.

From the Spotlight Client

1.  Click **Configure \| Connections**.
2.  Double click **Add new connection**.
3.  Fill in the connection details.

## Connection details

### Address
Specify the IP address or hostname of the ESX server or VirtualCenter server hosting the Windows server.

If you have a VirtualCenter server then connect to that in preference to the ESX host. That way if the virtual machine migrates from one host to another the VirtualCenter server can still be interrogated for data for the virtual machine.

### Authentication
Specify the authentication for Spotlight to use to connect to the VMware server.

Select **Use Diagnostic Server credentials** to use the Windows user configured to run the Spotlight Diagnostic Server.

Alternatively, fill in the **User** and **Password** fields. The user must have at least a read-only role for the ESX server or VirtualCenter server.


## Test the connection
On entering / modifying connection details in the Spotlight Client, click **Test** to test the connection.


{% include links.html %}
