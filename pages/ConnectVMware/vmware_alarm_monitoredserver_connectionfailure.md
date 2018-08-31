---
title: ﻿Monitored Server - VMware Connection Failure alarm
tags: [vmware_alarms]
last_updated: July 29, 2016
summary: "Spotlight has failed to connect to the VMware Server. Verify the VMware server address and authentication details are correct."
sidebar: c_vmware_sidebar
permalink: vmware_alarm_monitoredserver_connectionfailure.html
id: alarm_MonitoredServer_ConnectionFailure_VMware
folder: ConnectVMware
---



## Check the connection details

The VMware Server address is entered on the VMware Server \| Connection Details screen.

From the Spotlight Client

1.  Click **Configure \| Connections**.
2.  Right click on the VMware connection and select **Properties**.
3.  Check the connection details.
4.  Click **Test** to test the connection.

### VMware Server address

Check the address is a valid IP address or hostname of the ESX server or VirtualCenter server.

{% include note.html content="If you have a VirtualCenter server then connect to that in preference to the ESX host. That way if the virtual machine migrates from one host to another the VirtualCenter server can still be interrogated for data for the virtual machine." %}

### Authentication

Verify the user has at least a read-only role for the ESX server or VirtualCenter server.

## VMware Server availability

Verify the VMware Server is available and accessible over the network. Verify TCP port 443 is open.


{% include note.html content="The alarm will clear automatically if the error is due to the service being down or network problems and the error condition goes away." %}


{% include links.html %}
