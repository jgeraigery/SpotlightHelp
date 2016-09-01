---
title: Network - Percentage Bandwidth Alarm
last_updated: July 29, 2016
summary: "The average network bandwidth capacity of the specified network card is nearing the limit where it is saturating the network link. This value is taken over a specific number of background collections."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_network_percentagebandwidth.html
id: SoWHomePage.gauBandwidthLimit.BandwidthLimit.alarm
folder: ConnectSQLServer
---





If this is happening regularly, look at:

The NBT page of the Windows Server \| Network Drilldown to see if any users or other systems are copying an inordinate level of data between systems.
Moving network applications or shared files to another Windows server to balance the load.
Upgrading the network subsystem to a faster technology.
Adding an additional network card to the Windows server and configuring the system to utilize it.

## Configuration

You can configure this alarm to ignore certain values. For more information, see Do not alarm for certain values.
If there are multiple network cards on the target system, right-click the gauge and select Select network card to choose which one you want to display. For more information, see Windows Server \| Home Page \| Select the Network Card.

{% include links.html %}
