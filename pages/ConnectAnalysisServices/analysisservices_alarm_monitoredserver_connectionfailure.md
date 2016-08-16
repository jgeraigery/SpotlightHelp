---
title: ﻿Monitored Server - Analysis Services Connection Failure Alarm
last_updated: July 29, 2016
summary: "The service is not responding."
sidebar: c_analysisservices_sidebar
permalink: analysisservices_alarm_monitoredserver_connectionfailure.html
id: alarm_MonitoredServer_ConnectionFailure_AnalysisServices
folder: ConnectAnalysisServices
---


<h2>Connection Failure</h2>
<p>Spotlight has failed to connect to the SQL Server Analysis Services Server.</p>

<p>Possible things to consider:</p>

<p><b>Address</b></p>
<p>The address is entered on the Analysis Services | Connection Details screen. Click Configure | Connections and select the Analysis Services connection type; right click on the connection and select Properties.</p>
<p>Check the address is a valid server name, server instance name or IP address.</p>

<p><b>Connection</b></p>
  <p>The connection to the host of the Analysis Services server is defined on the Analysis Services | Connection Details screen. Click Configure | Connections and select the Analysis Services connection type; right click on the connection and select Properties.</p>
<p>The Windows server hosting the Analysis Services server is required. If the Windows server host is not in the list of connections then add it to the list.</p>
<p>Verify the host is in a domain. Spotlight cannot monitor SQL Server Analysis Services when the Windows host is in a workgroup.</p>

  <p><b>WMI Operability</b></p>
  <p>Verify WMI is working and returns data properly. Verify TCP port 135 is open on the Windows server host. For more information see Troubleshooting WMI in the online help.</p>

  <p><b>UDP port 1434</b></p>
  <p>If UDP port 1434 is closed then the port number must be included in the address used to connect Spotlight to the SQL Server instance.</p>

  <p><b>SQL Server availability</b></p>
  <p>Verify the SQL Server Analysis Services server is available and accessible over the network.</p>


<p><strong>Note:</strong> The alarm will clear automatically if the error is due to the service being down or network problems and the error condition goes away.</p>


{% include links.html %}
