---
title: Replicas grid
last_updated: July 29, 2016
summary: "Show data for each node in the Availability Group."
sidebar: c_availabilitygroup_sidebar
permalink: availabilitygroup_grid_replicas.html
id: HighAvailabilityAlwaysOn_Home_Grid_Replicas
folder: ConnectAvailabilityGroup
---




## Role

* One node takes the **Primary** role. Usually all other nodes have a **Secondary** role. If a node's role is **Resolving** then that node may be down.
* The failover mode for each node is configured by the DBA in the SQL Server Management Studio.
* When the failover mode is set to **manual** an accompanying icon highlights that manual failover is required. When no failover is available this icon is red.

 ![icon]({{ "/imagesClient/icon_refresherror.png" | prepend: site.baseurl }})

## Synchronization Health

Synchronization Health is indicative of the health of the node. A warning is shown for a partially healthy node. An error is shown for an unhealthy node. For the health of the Availability Group as a whole see **Synchronization Health** at the top of the page.

## Availability mode

The availability mode is **Synchronous** or **Asynchronous Commit** as configured by the DBA in the SQL Server Management Studio.

## Connected / Disconnected

The node with the Primary role is always **Connected**. Nodes with a Secondary role in a **Connected** state are available for connection. Nodes with a Secondary role in a **Disconnected** state are not available for connection.

## Backup priority

The backup priority is a numeric value between 1 and 100 configured by the DBA in the SQL Server Management Studio.

## Read-only routing URL

The read only routing URL is not the endpoint URL. Read-only routing refers to the ability of SQL Server to route qualifying read-only connection requests to an available Always On readable secondary replica.

The READ_ONLY_ROUTING_URL = 'TCP://system-address:port' where the system address is a string such as a system name, a fully qualified domain name, or an IP address, that unambiguously identifies the destination computer system. The port is a port number that is used by the Database Engine of the SQL Server instance.


{% include links.html %}
