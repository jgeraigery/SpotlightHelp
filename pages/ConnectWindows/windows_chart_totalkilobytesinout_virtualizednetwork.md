---
title: Total Kilobytes In/Out chart (Hyper-V)
last_updated: July 29, 2016
summary: "Show the load this virtual machine is placing on the Hyper-V server network bandwidth. For this chart network traffic is defined as that passing through locations external to the Hyper-V server and the virtual machine. Network traffic passing between virtual machines on the same Hyper-V server does not count."
sidebar: c_windows_sidebar
permalink: windows_chart_totalkilobytesinout_virtualizednetwork.html
id: VirtualizedNetwork.HyperV.TotalKilobytesInOut
folder: ConnectWindows
---


The amount of data or network activity you would expect to see depends on how the virtual machine is used. For example, if a Hyper-V server has a virtual machine to be used as a web server and a different virtual machine with a SQL Server installed and the SQL Server sends data to the web server, then you would expect the figures on this chart for the SQL Server virtual machine to be 0 or nearly 0 as its network activity by going to the Web Server is internal to the Hyper-V server.

## KB Received

Show kilobytes received over time by this virtual machine from sources external to the Hyper-V server. If this exceeds 80% of the interface capacity then there may be a problem.

## KB Sent

Show kilobytes sent over time from this virtual machine to destinations external to the Hyper-V server.



{% include links.html %}
