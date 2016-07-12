---
title: Support Services button
summary: "This button shows the state of the SQL Server Support Services."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_component_supportservices
folder: ConnectSQLServer
---


It will raise an alarm if any installed SQL Server support service is inactive, or if problems are detected with the Windows 2000 cluster.

For example, if the SQL Server Agentservice is stopped, this button will change color.

Additionally, if the SQL Server you are connected to runs on a cluster, Spotlight will raise an alarm when there are problems with the cluster
(for example, if a cluster node is unavailable).


Services currently diagnosed are:

* the **SQL Server Agent** (SQLServerAgent) service
* the **Distributed Transaction Coordinator** (MSDTC) service
* the **Microsoft OLAP/Analysis** (MSSQLServerOLAPService) service
* **SQL Mail**
* **SQL Agent Mail**
* Windows **Cluster Service** (MSCS)
