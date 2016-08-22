---
title: IP Datagrams chart
last_updated: July 29, 2016
summary: "IP datagrams (packets) are the message units that are transmitted across a network (and across the Internet) via the Internet Protocol. The IP Datagrams chart displays the rates at which IP packets are sent, received, and routed to other destinations."
sidebar: c_windows_sidebar
permalink: windows_chart_ipdatagrams.html
id: TCPIP.IPDatagramsChart
folder: ConnectWindows
---

You can view either the **IP Datagrams** chart or the **IP Datagrams Errors** chart. Select the desired option from the drop-down menu at the top of the chart.

## IP Datagrams chart


### Sent

The rate at which IP datagrams (packets) are being sent by the current system.

### Received

The rate at which IP datagrams are being received by the current system.

### Forwarded

The rate at which the current system is routing IP datagrams to another destination.

### Received delivered

The rate at which the system successfully receives and accepts IP packets.

## IP Datagrams Errors chart

### Outbound Discarded

The number of outbound packets that are discarded because of an issue unrelated to the packets themselves (for example, if the send buffer is full).

### Received Address Errors

The number of packets received by the system that do not have a valid return address.

### Outbound No Route

The number of outbound packets that are discarded because the system cannot route the packets to the destination IP address.

### Received Discarded

The number of received packets that are discarded because of an issue unrelated to the packets themselves (for example, if the receive buffer is full).

### Received Header Errors

The number of packets received that have errors in the IP header area (for example, a packet checksum error).

### Received Unknown Protocol

The number of packets received that are correctly addressed but use a protocol unsupported by the IP handler on the system.



{% include links.html %}
