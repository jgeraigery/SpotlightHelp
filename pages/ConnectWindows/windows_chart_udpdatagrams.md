---
title: UDP Datagrams chart
last_updated: July 29, 2016
summary: "UDP (User Datagram Protocol) is an alternative communications protocol to the Transmission Control Protocol (TCP)."
sidebar: c_windows_sidebar
permalink: windows_chart_udpdatagrams.html
id: TCPIP.UDPDatagramsChart
folder: ConnectWindows
---

Unlike TCP, UDP does not provide a sequencing service, so when UDP datagrams (packets) arrive at a destination, they are reassembled into a complete message via an end-point application that is active on the port(s) specified in the datagram. The UDP Datagrams chart displays different graphs representing the rate at which UDP datagrams are transmitted or received in the current Windows system.

## Sent

The rate at which UDP datagrams are transmitted by the current system.

## Received

The rate at which UDP datagrams are received by the current system.

## No port

During transmission, UDP provides port numbers to distinguish different user requests. The **No Port** statistics displays the number of packets received per second that do not have an end-point application active on the specified port.


{% include links.html %}
