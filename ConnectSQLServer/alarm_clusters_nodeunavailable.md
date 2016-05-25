---
title: ﻿Clusters - Node Unavailable Alarm
keywords: mydoc
summary: "The Clusters - Node Unavailable Alarm alarm is raised when Spotlight detects that at least one cluster node (computer system) is not currently running as part of the cluster."
sidebar: c_sqlserver_sidebar
toc: false
permalink: /sqlserver_alarm_clusters_nodeunavailable/
---


This alarm can only be raised when you are connected to a SQL Server that is running as part of a Microsoft Cluster Server (MSCS).

When a cluster node (i.e. a computer system that participates in a cluster) is unavailable, the workload that it normally processes will fail over to other computer systems in the cluster, resulting in lower performance.

## When the alarm is raised

*  Check the SQL Server \| Support Services Drilldown \| Cluster Services page to determine which cluster node is unavailable. 
*  Verify the computer system is running and that Windows is operating normally.
*  Verify the Cluster Service is running on the computer system.
*  Use the Windows event logs to determine why the computer system is not participating in the cluster. For more information, see Windows Server \| Events Logs Drilldown.
