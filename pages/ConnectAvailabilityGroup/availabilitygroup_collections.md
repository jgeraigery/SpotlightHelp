---
title: Availability Group Collections
last_updated: July 29, 2016
tags: [collections,collections_for_each_connection_type]
summary: "Data is collected from the SQL Server Availability Group connection from the following Spotlight collections."
sidebar: c_availabilitygroup_sidebar
permalink: availabilitygroup_collections.html
folder: ConnectAvailabilityGroup
---



 


## How to configure Spotlight collections

Use a Spotlight Client to configure Spotlight collections. See [Configure Scheduling][enterprise_cfgmonitor_scheduling]

From the Spotlight Client

1.  Click **Configure \| Scheduling**.
2.  Select template or connection to configure
3.  Select a collection to modify the collection schedule.


## Alarms

Alarm | Collection Name
------|-----------
Availability Group - Failover Availability | Group States
Availability Group - Failed Over | Availability Group Failover Detection
Availability Group - Quorum Failure Imminent | Group States
Availability Group - Synchronization Health | Availability Group States

## Spotlight Overview page

Component | Collection Name
----------|-----------
Status | N/A   
Synchronization Health | Availability Group States   
Primary Instance | Availability Group States   
Failover Mode | Replicas   
Cluster Name | Cluster Details   
Cluster Mode | Cluster Details   
Replicas collected (grid) | Replicas   
Databases collected (grid) | Database Replicas


{% include links.html %}
