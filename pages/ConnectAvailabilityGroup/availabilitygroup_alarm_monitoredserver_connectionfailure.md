---
title: ﻿Monitored Server - Availability Group Connection Failure Alarm
last_updated: July 29, 2016
summary: "Spotlight has failed to connect to the SQL Server Availability Group."
sidebar: c_availabilitygroup_sidebar
permalink: availabilitygroup_alarm_monitoredserver_connectionfailure.html
id: alarm_MonitoredServer_ConnectionFailure_AvailabilityGroups
folder: ConnectAvailabilityGroup
---



Possible things to consider:

## Availability

Verify a node from the availability group is available and accessible over the network.

## Address

The address is entered on the **Availability Groups \| Connection Details** screen. Click **Configure \| Connections** and select the Availability Groups connection type; right click on the connection and select Properties.

Check the address is a valid availability listener: hostname, URL or IP address.

## Authentication

Authentication to the Availability Group is defined on the Availability Groups \| Connection Details screen. Click Configure \| Connections and select the Availability Group connection type; right click on the connection and select Properties.

When Use Diagnostic Server credentials is selected then the account running the Spotlight Diagnostic Server is used to connect to the Availability Group.

When filling in the User and Password fields, ensure the database user has sufficient privileges to retrieve server information, query the registry, and access WMI and performance monitor objects. An account with administrative rights to the listener allows this.

## WMI Operability

Verify WMI is working and returns data properly. Verify TCP port 135 is open on the Windows server host. For more information see Troubleshooting WMI in the online help.

## UDP port 1434

If UDP port 1434 is closed then the port number must be included in the address used to connect Spotlight to the SQL Server instance.

{% include note.html content="The alarm will clear automatically if the error is due to the service being down or network problems and the error condition goes away." %}



{% include links.html %}
