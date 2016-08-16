---
title: ﻿Monitored Server - VMware Connection Failure Alarm
last_updated: July 29, 2016
summary: "Spotlight has failed to connect to the VMware Server."
sidebar: c_vmware_sidebar
permalink: vmware_alarm_monitoredserver_connectionfailure.html
id: alarm_MonitoredServer_ConnectionFailure_VMware
folder: ConnectVMware
---



<p>Possible things to consider:</p>

  <p><b>VMware Server address</b></p>
<p>The VMware Server address is entered on the VMware Server | Connection Details screen. Click Configure | Connections and select the VMware connection type; right click on the connection and select Properties.</p>
<p>Check the address is a valid IP address or hostname of the ESX server or VirtualCenter server.</p>
<p>If you have a VirtualCenter server then connect to that in preference to the ESX host. That way if the virtual machine migrates from one host to another the VirtualCenter server can still be interrogated for data for the virtual machine.</p>

  <p><b>Authentication</b></p>
  <p>Authentication to the VMware Server is defined on the VMware Server | Connection Details screen. Click Configure | Connections and select the VMware connection type; right click on the connection and select Properties.</p>
  <p>Verify the user has at least a read-only role for the ESX server or VirtualCenter server.</p>
  <p><b>VMware Server availability</b></p>
  <p>Verify the VMware Server is available and accessible over the network. Verify TCP port 135 is open</p>

<p><strong>Note:</strong> The alarm will clear automatically if the error is due to the service being down or network problems and the error condition goes away.</p>


* Check the connection to the service.
* Check the availability of the service.
* Check the network.

If WMI queries fail then a Windows Connection Failure alarm is raised on the third successive failed attempt, not on every failed attempt.


{% include links.html %}
