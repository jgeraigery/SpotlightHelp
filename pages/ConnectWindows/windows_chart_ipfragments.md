---
title: IP Fragments chart
last_updated: July 29, 2016
summary: "When data packets are transmitted across a network via TCP/IP, they may be further fragmented en route, and need to be reassembled. The IP Fragments chart displays the rates at which the fragmented packets are received and rebuilt."
sidebar: c_windows_sidebar
permalink: windows_chart_ipfragments.html
id: TCPIP.IPFragmentsChart
folder: ConnectWindows
---


The graphs on the chart display one of the following features of IP fragmentation:

## Received

The rate at which IP fragments are received successfully.

## Created

The rate at which IP datagram fragments are generated as a result of fragmentation.

## Re-assembled

The rate at which IP fragments are rebuilt into their original data packets. Packets are fragmented when they travel through a router that needs to send packets that are smaller than the packets received.

## Datagrams

The rate at which IP fragments are created on the current system. This applies only to routed packets.

## Failures

The rate at which the current system receives data packets that are too large to be transmitted, and that cannot be fragmented. The cause may be the presence of a "do not fragment" flag in the IP packet header.

## Reassembly Failures

The rate at which errors are reported when IP fragments are reassembled into data packets. This may be due to an error in one or more fragments.



{% include links.html %}
