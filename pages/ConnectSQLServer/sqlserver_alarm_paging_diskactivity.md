---
title: Paging - Disk Activity alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "This alarm is activated when paging is low, but the average disk activity on a paging file disk is high. This value is taken over a specific number of background collections."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_paging_diskactivity.html
id: Paging_Disk_Activity.alarm
folder: ConnectSQLServer
---





The recommended action is:- Put files that are accessed frequently (such as database files) on a different physical disk than the Windows paging file(s).

{% include note.html content="The Spotlight Client can be used to configure this alarm to ignore certain values: **Configure \| Alarms**." %}

{% include links.html %}
