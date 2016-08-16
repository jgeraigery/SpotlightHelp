---
title: ﻿Monitored Server - Replication Connection Failure Alarm
last_updated: July 29, 2016
summary: "The service is not responding."
sidebar: c_replication_sidebar
permalink: replication_alarm_monitoredserver_connectionfailure.html
id: alarm_MonitoredServer_ConnectionFailure_SQLServerRep
folder: ConnectReplication
---




<p>Spotlight has failed to connect to the SQL Server Replication environment.</p>

<p>Possible things to consider:</p>

<p><b>Address</b></p>
<p>The address is entered on the SQL Server Replication | Connection Details screen. Click Configure | Connections and select the SQL Server Replication connection type; right click on the connection and select Properties.</p>
<p>Check the address is a valid connect string for a distributor database in the replication environment: a server name, server instance name or IP address.</p>

  <p><b>Authentication</b></p>
  <p>Authentication to the SQL Server Replication environment is defined on the SQL Server Replication | Connection Details screen. Click Configure | Connections and select the SQL Server Replication connection type; right click on the connection and select Properties.</p>

  <p>When Use Diagnostic Server credentials is selected then the account running the Spotlight Diagnostic Server is used to connect to the SQL Server Replication environment.</p>

  <p><b>WMI Operability</b></p>
  <p>Verify WMI is working and returns data properly. Verify TCP port 135 is open on the Windows server host. For more information see Troubleshooting WMI in the online help.</p>

  <p><b>UDP port 1434</b></p>
  <p>If UDP port 1434 is closed then the port number must be included in the address used to connect Spotlight to the SQL Server instance.</p>

  <p><b>SQL Server availability</b></p>
  <p>Verify the SQL Server Replication environment is available and accessible over the network.</p>


<p><strong>Note:</strong> The alarm will clear automatically if the error is due to the service being down or network problems and the error condition goes away.</p>


* Check the connection to the service.
* Check the availability of the service.
* Check the network.

If WMI queries fail then a Windows Connection Failure alarm is raised on the third successive failed attempt, not on every failed attempt.


{% include links.html %}
