---
title: ﻿Monitored Server - Analysis Services Connection Failure Alarm
last_updated: July 29, 2016
summary: "Spotlight has failed to connect to the SQL Server Analysis Services Server."
sidebar: c_analysisservices_sidebar
permalink: analysisservices_alarm_monitoredserver_connectionfailure.html
id: alarm_MonitoredServer_ConnectionFailure_AnalysisServices
folder: ConnectAnalysisServices
---



Possible things to consider:

## Address

The address is entered on the Analysis Services \| Connection Details screen. Click Configure \| Connections and select the Analysis Services connection type; right click on the connection and select Properties.

Check the address is a valid server name, server instance name or IP address.

## Connection

The connection to the host of the Analysis Services server is defined on the Analysis Services \| Connection Details screen. Click Configure \| Connections and select the Analysis Services connection type; right click on the connection and select Properties.

The Windows server hosting the Analysis Services server is required. If the Windows server host is not in the list of connections then add it to the list.

Verify the host is in a domain. Spotlight cannot monitor SQL Server Analysis Services when the Windows host is in a workgroup.

## WMI Operability

Verify WMI is working and returns data properly. Verify TCP port 135 is open on the Windows server host. For more information see Troubleshooting WMI in the online help.

## UDP port 1434

If UDP port 1434 is closed then the port number must be included in the address used to connect Spotlight to the SQL Server instance.

## SQL Server availability

Verify the SQL Server Analysis Services server is available and accessible over the network.

{% include note.html content="The alarm will clear automatically if the error is due to the service being down or network problems and the error condition goes away." %}


{% include links.html %}
