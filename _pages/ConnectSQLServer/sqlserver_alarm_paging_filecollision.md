---
title: Paging - File Collision Alarm
summary: "This alarm becomes active when there is more than one paging file on a single physical disk."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_paging_filecollision
folder: ConnectSQLServer
---





This can cause performance degradation – especially on IDE disks. IDE disks allow only a single disk operation to be active on the bus at any time.

To rectify this:

Open the Windows Control Panel.
Double-click System.
Click the Advanced tab.
Select Performance Settings, and change the paging file allocations.
Configuration

You can configure this alarm to ignore certain values. For more information, see Do not alarm for certain values.
