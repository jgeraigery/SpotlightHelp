---
title: Data display and collection problems
last_updated: July 29, 2016
summary: "Known issues with the display and collection of data on the Overview page or its drilldowns."
sidebar: c_windows_sidebar
permalink: windows_troubleshoot_datadisplay.html
folder: ConnectWindows
---


## Execute user actions on the Windows Server from the Spotlight Client

In order to execute actions on the Windows Server (like kill a session) from the Spotlight Client, the Windows user running the Spotlight Client must be a member of at least one of the Spotlight diagnostic user groups.

## Data display and collection problems - Windows Server connection

Ensure necessary components are enabled on the monitored Windows Server (SQL Server host) to ensure correct data display and collection.

### Windows Server \| Spotlight Overview page \| Disks Panel and Windows Server \| Disks Drilldown

If disk counters are disabled on the monitored Windows Server you may notice the following:

* The Spotlight Overview page Disks panel and Disks drilldown show no data.
* Various I/O charts on the SQL I/O Activity tab and Windows Activities drilldowns, and disk graphs on the Databases drilldown show no data.
* Errors executing "LogicalDisk" or "PagingFile" queries.

To enable disk counters

1. Open a command line window on the monitored Windows Server.
2. Type the following at the command prompt: **diskperf -y**
3. Restart the Windows Server.  


### Windows Server \| Network Drilldown

If the Network Drilldown \| NBT page is displaying no data, the likely cause is that the appropriate performance counters are not enabled on the monitored Windows server.

To enable the collection of network data

* Windows Server 2003: Use the Exctrlst utility to ensure the PerfNet counters are active on the Windows Server. Download Exctrlst from the Microsoft Web site (download).
* Verify at least one network device is using NBT (NetBIOS over TCP/IP). To do this, check the properties of all network connections (in particular, Advanced TCP/IP Settings \| WINS) to ensure that the NetBIOS setting is not disabled.  

## Troubleshooting

Check the Known Issues section of the [Spotlight Enterprise Release Notes][enterprise_releasenotes].


{% include links.html %}
