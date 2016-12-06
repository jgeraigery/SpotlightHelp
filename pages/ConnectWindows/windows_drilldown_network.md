---
title: Network drilldown
last_updated: July 29, 2016
summary: "Drilldown on the network activity to and from the Windows server."
sidebar: c_windows_sidebar
permalink: windows_drilldown_network.html
folder: ConnectWindows
---

## How to open the Network drilldown

From the Spotlight Client

1. Select the connection from the left Connections pane.
2. Click **Monitor \| Network** from the ribbon.
   {% include imageClient.html file="tb_drilldown_network.png" alt="Network drilldown for Windows servers" %}

{% include tip.html content="Click for more information on using [Spotlight Charts][enterprise_display_charts] and [Spotlight Grids][enterprise_display_grids]." %}


## About the Network drilldown

### Network page
Investigate recent network activity to and from the Windows server.

#### Total Packets In/Out chart
Shows the incoming and outgoing packet rates as an aggregate across all network cards for the Windows server.

#### Packets by Network Card chart
Shows the total number of packets (incoming and outgoing) broken down by network card.

#### Total Kilobytes In/Out chart
Shows the level of traffic being received and sent by the Windows server in kilobytes.

#### Errors and Retries chart
Shows the number of errors and retries on the network subsystem. A consistent number of retries or errors usually means one of the following:

* A network segment attached to the Windows server is over-utilized.
* There are problems with a network card, cabling or other networking device on a network segment.

### TCPIP page
Investigate recent TCP/IP activity to and from the Windows server.

#### TCP Segments chart
Shows different graphs representing the rate at which TCP segments are transmitted or received in the Windows server.

When TCP transfers a stream data, it breaks up the stream into small segments

#### IP Fragments chart
Shows the rates at which the fragmented packets are received and rebuilt.

When data packets are transmitted across a network via TCP/IP, they may be further fragmented en route, and need to be reassembled.

#### UDP Datagrams chart
Shows different graphs representing the rate at which UDP datagrams are transmitted or received in the Windows server.

UDP (User Datagram Protocol) is an alternative communications protocol to the Transmission Control Protocol (TCP).

Unlike TCP, UDP does not provide a sequencing service, so when UDP datagrams (packets) arrive at a destination, they are reassembled into a complete message via an end-point application that is active on the port(s) specified in the datagram.

#### IP Datagrams /IP Datagrams Errors chart
Shows the rates at which IP packets are sent, received, and routed to other destinations.

IP datagrams (packets) are the message units that are transmitted across a network (and across the Internet) via the Internet Protocol.

You can view either the IP Datagrams chart or the IP Datagrams Errors chart. Select the desired option from the drop-down menu at the top of the chart.

To switch between IP Datagram and IP Datagram Errors view, click the arrow next to the chart name.



### NBT page
Investigate which machines have NBT connections to this system.

#### NBT grid
Shows the machines that have a connection to the Windows server, and the corresponding level of traffic (in kilobytes) being generated between the connections.

This is only for NBT (NetBios over TCP/IP) connections – that is, only Microsoft Networking connection over TCPIP.


### Sessions page
Investigate which users of other systems are connected to this system.

#### Open Sessions grid
Shows active connections made to the Windows Server by users on other systems.

Remote Desktop sessions are not shown.


### Shares page
Investigate shared resources on this system and any current connections to those resources.

#### Shares grid
Shows the resources on the Windows Server that can be shared with users on other systems

#### Open Connections grid
Shows the connections currently established to the shared resource selected in the Shares grid.



### Virtualized Network page
Investigate the load this virtual machine is placing on the Hyper-V server network bandwidth. This is applicable only to virtual machines hosted on a Hyper-V server.

#### Total Kilobytes In/Out chart
For this chart network traffic is defined as that passing through locations external to the Hyper-V server and the virtual machine. Network traffic passing between virtual machines on the same Hyper-V server does not count.




{% include links.html %}
