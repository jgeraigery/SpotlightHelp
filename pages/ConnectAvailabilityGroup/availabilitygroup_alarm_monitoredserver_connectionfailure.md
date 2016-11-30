---
title: ﻿Monitored Server - Availability Group Connection Failure alarm
tags: availability_group_alarms
last_updated: July 29, 2016
summary: "Spotlight has failed to connect to the SQL Server Availability Group."
sidebar: c_availabilitygroup_sidebar
permalink: availabilitygroup_alarm_monitoredserver_connectionfailure.html
id: alarm_MonitoredServer_ConnectionFailure_AvailabilityGroups
folder: ConnectAvailabilityGroup
---


## Check the connection details

The SQL Server Availability Group connection details are entered on the Spotlight Client, Availability Group \| Connection Details screen.

From the Spotlight Client

1.  Click **Configure \| Connections**.
2.  Right click on the Availability Group connection and select **Properties**.
3.  Check the connection details.
4.  Click **Test** to test the connection.

Possible things to consider:

## Availability

Verify a node from the availability group is available and accessible over the network.

## Address

Check the address is a valid availability listener: hostname, URL or IP address.

## Authentication

When **Use Diagnostic Server credentials** is selected then the account running the Spotlight Diagnostic Server is used to connect to the Availability Group.

When filling in the **User** and **Password** fields, ensure the database user has sufficient privileges to retrieve server information, query the registry, and access WMI and performance monitor objects. An account with administrative rights to the listener allows this.

## WMI Operability

Verify WMI is working and returns data properly. Verify TCP Port 135 is open on the Windows server host.

## UDP port 1434

If UDP Port 1434 is closed then the port number must be included in the address used to connect Spotlight to the SQL Server instance.

{% include note.html content="The alarm will clear automatically if the error is due to the service being down or network problems and the error condition goes away." %}



{% include links.html %}
