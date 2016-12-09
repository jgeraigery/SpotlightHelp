---
title: Cluster Services grid
last_updated: July 29, 2016
summary: "The Cluster Services grid displays information about the state of your current Microsoft Cluster Server. You can view the status of each cluster resource and group, as well as the status of and cluster resources owned by each server (node) in the cluster. Spotlight highlights any unusual conditions such as resources offline or cluster nodes down."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_clusterservices.html
id: SQLSupportServices_Cluster.ClusterGrid
folder: ConnectSQLServer
---


{% include note.html content="If you are connected to a SQL Server instance that is not running on a Microsoft Cluster Server, this page displays the message **SQL Server is not running on a Cluster server**." %}


## Available collumns include:

### Name

The hierarchical tree of cluster resources, the root of which is the name of the cluster. Lower levels in the tree represent cluster groups, resource groups and servers, and resource details.

### Status

The status of the current resource (where applicable).

### Server

The individual server in the cluster where the specified resource is located.

### Comment

A brief description of the specified cluster resource (if available).

### ID

The unique identifier for the specified resource in the cluster.

## Basic cluster control operations

 Members of the Spotlight Diagnostic Administrators group can perform the following basic cluster control operations on some resources. Right click the grid and select an option from the shortcut menu.

### Take Offline

Makes a cluster resource or cluster group unavailable. For example, taking the SQL Server resource offline will stop the MSSQLServer service. This option is available only for groups and resources that are currently online. Additionally, you cannot take a resource offline if that would cause the SQL Server, to which Spotlight is currently connected, to be taken offline.

### Bring Online

Starts a cluster resource or group. This is the opposite of Take Offline. This option is available only for resources and groups that are offline.

### Move Group

Moves a cluster group to another node of the cluster. This will prompt you for the machine that the group should be moved to. All cluster resources in this group will be brought online on the node you specify.



{% include links.html %}
