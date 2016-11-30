---
title: ﻿Monitored Server - Analysis Services Connection Failure Alarm
tags: [analysis_services_alarms]
last_updated: July 29, 2016
summary: "Spotlight has failed to connect to the SQL Server Analysis Services Server. Check the Analysis Services address, connection to the host, and Analysis Services availability"
sidebar: c_analysisservices_sidebar
permalink: analysisservices_alarm_monitoredserver_connectionfailure.html
id: alarm_MonitoredServer_ConnectionFailure_AnalysisServices
folder: ConnectAnalysisServices
---



## Check the connection details

The Analysis Services connection details are entered on the Spotlight Client, Analysis Services \| Connection Details screen.

From the Spotlight Client

1.  Click **Configure \| Connections**.
2.  Right click on the Analysis Services connection and select **Properties**.
3.  Check the connection details.
4.  Click **Test** to test the connection.


### Address

Verify the address is a valid server name, server instance name or IP address.

### Connection

Verify the Windows server hosting the Analysis Services server is correct. If the Windows server host is not in the list of connections then add it to the list.

Verify the host is in a domain. Spotlight cannot monitor SQL Server Analysis Services when the Windows host is in a workgroup.

## WMI Operability

Verify WMI is working and returns data properly. Verify TCP Port 135 is open on the Windows server host.

## UDP Port 1434

If UDP port 1434 is closed then the port number must be included in the address used to connect Spotlight to the SQL Server instance.

## SQL Server availability

Verify the SQL Server Analysis Services server is available and accessible over the network.

{% include note.html content="The alarm will clear automatically if the error is due to the service being down or network problems and the error condition goes away." %}

{% include links.html %}
