---
title: Network - Percentage Bandwidth Alarm
last_updated: July 29, 2016
summary: "The average network bandwidth capacity of the specified network card is nearing the limit where it is saturating the network link. This value is taken over a specific number of background collections."
sidebar: c_windows_sidebar
permalink: windows_alarm_network_percentagebandwidth.html
id: SoWHomePage.gauBandwidthLimit.BandwidthLimit.alarm
folder: ConnectWindows
---


## If this is happening regularly, look at:

* The NBT page of the Network drilldown to see if any users or other systems are copying an inordinate amount of data between systems.
* Moving network applications or shared files to another machine to balance the load.
* Upgrading the network subsystem to a faster technology.
* Adding an additional network card to the machine and configuring the system to utilize it.

{% include tip.html content="If there are multiple network cards on the target system, you can right-click the gauge and select **Select network card** to choose which one you want to display." %}

{% include note.html content="You can configure this alarm to ignore certain values. See *Configure an Alarm to Ignore Certain Values* in the online help for more information." %}
