---
title: ﻿Monitored Server - Hyper-V Connection Failure Alarm
last_updated: July 29, 2016
summary: "The service is not responding."
sidebar: c_hyperv_sidebar
permalink: hyperv_alarm_monitoredserver_connectionfailure.html
id: alarm_MonitoredServer_ConnectionFailure_Hyperv
folder: ConnectHyperv
---



<p>Spotlight has failed to connect to the Hyper-V Server.</p>
<p>Possible things to consider:</p>

  <p><b>Hyper-V Server address</b></p>
<p>The Hyper-V Server address is entered on the Hyper-V Server | Connection Details screen. Click Configure | Connections and select the Hyper-V connection type; right click on the connection and select Properties.</p>
<p>Check the address is a valid IP address or hostname of the Hyper-V server.</p>

  <p><b>Authentication</b></p>
  <p>Authentication to the Hyper-V Server is defined on the Hyper-V Server | Connection Details screen. Click Configure | Connections and select the Hyper-V connection type; right click on the connection and select Properties.</p>
  <p>When Use Diagnostic Server credentials is selected then the account running the Spotlight Diagnostic Server is used to connect to the Hyper-V Server. Ensure the Windows user running the Spotlight Diagnostic Server can access the Hyper-V Server.</p>
  <p>If you select to fill in the user and password fields, verify the user has at least a read-only role.</p>

  <p><b>Hyper-V Server availability</b></p>
  <p>Verify the Hyper-V Server is available and accessible over the network. Verify TCP port 135 is open.</p>

  <p><strong>Note:</strong> The alarm will clear automatically if the error is due to the service being down or network problems and the error condition goes away.</p>


* Check the connection to the service.
* Check the availability of the service.
* Check the network.

If WMI queries fail then a Windows Connection Failure alarm is raised on the third successive failed attempt, not on every failed attempt.


{% include links.html %}
