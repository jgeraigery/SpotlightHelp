---
title: Network - Percentage Bandwidth alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "The average network bandwidth capacity of the specified network card is nearing the limit where it is saturating the network link. This value is taken over a specific number of background collections."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_network_percentagebandwidth.html
id: SoWHomePage.gauBandwidthLimit.BandwidthLimit.alarm
folder: ConnectSQLServer
---





If this is happening regularly:

* Open the **Windows Server \| Network Drilldown \| NBT page** to see if any users or other systems are copying an inordinate level of data between systems.
* Consider moving network applications or shared files to another Windows server to balance the load.
* Consider upgrading the network subsystem to a faster technology.
* Consider adding an additional network card to the Windows server and configuring the system to utilize it.

{% include note.html content="The Spotlight Client can be used to configure this alarm to ignore certain values: **Configure \| Alarms**." %}

{% include tip.html content="If there are multiple network cards on the target system, right-click the gauge and select **Select network card** to choose the network card to display. For more information, see **Windows Server \| Spotlight Overview page \| Select the Network Card**." %}



{% include links.html %}
