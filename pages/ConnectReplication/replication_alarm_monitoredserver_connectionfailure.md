---
title: ﻿Monitored Server - Replication Connection Failure alarm
tags: [replication_alarms]
last_updated: July 29, 2016
summary: "Spotlight has failed to connect to the SQL Server Replication environment."
sidebar: c_replication_sidebar
permalink: replication_alarm_monitoredserver_connectionfailure.html
id: alarm_MonitoredServer_ConnectionFailure_SQLServerRep
folder: ConnectReplication
---



## Check the connection details

The SQL Server Replication connection details are entered on the Spotlight Client, SQL Server Replication \| Connection Details screen.

From the Spotlight Client

1.  Click **Configure \| Connections**.
2.  Right click on the SQL Server Replication connection and select **Properties**.
3.  Check the connection details.
4.  Click **Test** to test the connection.


### Address

Verify the address is a valid connect string for a distributor database in the replication environment: a server name, server instance name or IP address.

### Authentication

When **Use Diagnostic Server credentials** is selected then the account running the Spotlight Diagnostic Server is used to connect to the SQL Server Replication environment.

## WMI Operability

Verify WMI is working and returns data properly. Verify TCP Port 135 is open on the Windows server host.

## UDP Port 1434

If UDP Port 1434 is closed then the port number must be included in the address used to connect Spotlight to the SQL Server instance.

## SQL Server availability

Verify the SQL Server Replication environment is available and accessible over the network.

{% include note.html content="The alarm will clear automatically if the error is due to the service being down or network problems and the error condition goes away." %}


{% include links.html %}
