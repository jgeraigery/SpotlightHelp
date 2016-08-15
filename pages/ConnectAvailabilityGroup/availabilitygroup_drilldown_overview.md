---
title: Availability Group Overview page
last_updated: July 29, 2016
summary: "Show the components and virtual machines grid for the Availability Group connection."
sidebar: c_availabilitygroup_sidebar
permalink: availabilitygroup_drilldown_overview.html
folder: ConnectAvailabilityGroup
---

## How to open the Availability Group connection display (Spotlight Client)

From the left Connections pane, click on the connection name.

Expand the Availability Group connection type from Monitored connections to list connections by name.

Click on the connection name to show components, the replicas grid and databases grid for the Availability Group.


## components

### Status

The status indicator is colored according to the highest raised alarm on the Availability Group.

During a planned outage, all controls are disabled except Status. A Monitored Server - Planned Outage alarm is raised against the Status control. For more information, see Configure \| Planned Outage.

### Synchronization Health

The health rating of the Availability Group is excellent when all nodes are available and the preferred node is primary.

{% include note.html content="See the Replicas grid for the health of each node in the group." %}

### Primary Instance

The name of the node (instance) that is currently primary.

### Failover indicator

The current failover availability:

#### Automatic Failover

Available At least one of the connected secondary nodes is set for automatic failover.

#### Manual Failover

Required None of the connected nodes are set for automatic failover.

{% include note.html content="Also check the Databases grid regarding any loss of data on failover." %}

### Cluster

The name of the Windows Server Failover Cluster (WSFC).

### Quorum Rating

The Quorum rating of database availability. The DBA sets the quorum configuration in the SQL Server Management Studio. The Quorum rating determines the number of node failures that the cluster can sustain.


## Replicas grid

Show data for each node in the Availability Group.

* One node takes the Primary role. Usually all other nodes have a Secondary role. If a node's role is Resolving then that node may be down.
* The failover mode for each node is configured by the DBA in the SQL Server Management Studio.
* When the failover mode is set to manual an accompanying icon highlights that manual failover is required. When no failover is available this icon is red.
* Synchronization Health is indicative of the health of the node. A warning is shown for a partially healthy node. An error is shown for an unhealthy node. For the health of the Availability Group as a whole see Synchronization Health at the top of the Home Page.
* The availability mode is Synchronous or Asynchronous Commit as configured by the DBA in the SQL Server Management Studio.
* The node with the primary role is always Connected. Nodes with a secondary role in a Connected state are available for connection. Nodes with a secondary role in a Disconnected state are not available for connection.
* The backup priority is a numeric value between 1 and 100 configured by the DBA in the SQL Server Management Studio.
* The read only routing URL is not the endpoint URL. Read-only routing refers to the ability of SQL Server to route qualifying read-only connection requests to an available Always On readable secondary replica.
* The READ_ONLY_ROUTING_URL = 'TCP://system-address:port' where the system address is a string such as a system name, a fully qualified domain name, or an IP address, that unambiguously identifies the destination computer system. The port is a port number that is used by the Database Engine of the SQL Server instance.


## Databases grid

Show data for each database in the Availability Group.

* Failover readiness indicates whether or not there will be data loss on failover. If there will be data loss then check the Synchronization state. The database on this node could be behind time: in the process of synchronizing (Synchronizing) or Not Synchronized.
* The Database State shows an error for databases in Suspect or Emergency states. It shows a warning for any other state that is not Online.
* The LSN values refer to the Log Sequence Number.  



{% include links.html %}
