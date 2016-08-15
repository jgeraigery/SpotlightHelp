---
title: Databases grid
last_updated: July 29, 2016
summary: "Show data for each database in the Availability Group."
sidebar: c_availabilitygroup_sidebar
permalink: availabilitygroup_grid_databases.html
id: HighAvailabilityAlwaysOn_Home_Grid_Databases
folder: ConnectAvailabilityGroup
---





## Failover Readiness

Failover readiness indicates whether or not there will be data loss on failover. If there will be data loss then check the **Synchronization State**. The database on this node could be behind time: in the process of synchronizing (**Synchronizing**) or **Not Synchronized**.

## Database State

The Database State shows an error for databases in Suspect or Emergency states. It shows a warning for any other state that is not Online.

## LSN

The LSN values refer to the Log Sequence Number.


{% include links.html %}
