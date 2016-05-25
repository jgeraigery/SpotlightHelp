---
title: Clusters - Non-Preferred Node Alarm
keywords: mydoc
summary: "The Clusters - Non-preferred Node alarm is raised when Spotlight detects that SQL Server is running on a Windows cluster, and at least one SQL Server instance is not running on its preferred cluster node."
sidebar: c_sqlserver_sidebar
toc: false
permalink: /sqlserver_alarm_clusters_nonpreferrednode/
---


This alarm can only be raised when you are connected to a SQL Server that is running as part of a Microsoft Cluster Server (MSCS).

In a Windows cluster, each SQL Server instance belongs to a single cluster group. Each group has a list of cluster nodes (computer systems) on which it can run. These computer systems have a preference order that determines which node the group should run on if possible. Spotlight uses the term Preferred Server to identify the first server in this list. This is the server that the SQL Server group should normally be running on under normal circumstances.

Spotlight raises this alarm when any SQL Server instance in this cluster is not running on its preferred server. This could be the SQL Server instance you are currently connected to, or it could be another SQL Server instance in the same cluster. Spotlight includes other instances in the cluster because in an active-active cluster you do not want both SQL Server instances running on the one node while the other cluster computer system is sitting idle.

## When the alarm is raised

* View the SQL Server \| Support Services Drilldown \| Cluster Services page to see which SQL Server cluster group is not running on its preferred cluster node. 
* Consider moving that cluster group to its preferred node.
