---
title: Partial support for monitoring SQL Server 2017
last_updated: March 28, 2017
summary: "Spotlight Enterprise now provides partial support for SQL Server 2017 connections."
sidebar: c_sqlserver_sidebar
id: SQL_Statement
permalink: sqlserver2017_partialsupport.html
folder: ConnectSQLServer
---


## Alarms
Support is provided for SQL Server 2017 connections with the following exceptions. The following alarms are not supported:

* Clusters - Failed over
* Clusters - File Share Witness inaccessible
* Clusters - Node unavailable
* Clusters - non-Preferred Node
* LiteSpeed Backup Failed
* LiteSpeed Backup Warning
* Log Shipping - Secondary Job
* Log Shipping - Secondary Latency
* Mirroring - State
* Mirroring - Unrestored Log
* Mirroring - Unsent Log
* Mirroring Faildover
* Monitored Server - SQL Server Host Not Defined
* Services - DTC Service Status
* Services - Full Text Search Service
* Services - Integration Service Status
* Services - Reporting Service Status
* Services - SQL Agent Mail Status
* Services - SQL Mail Status
* SQL Agent - Alerts
* SQL Agent - Jobs Failed
* SQL Agent - Long Running Jobs (Percent)
* SQL Agent - Long Running Jobs (Time)
* SQL Agent - Status
* Tempdb File Location
* Virtualization alarms

## Drilldowns for SQL Server 2017 connections
Support is provided for SQL Server 2017 connections with the following exceptions.

* The High Availability drilldown Log Shipping configuration is partially supported for SQL Server 2017 connections.
* The Support Services \| DTC drilldown is not supported for SQL Server 2017 connections.
* The Databases \| Disk Space drilldown is not supported for SQL Server 2017 connections.
* The SQL Agent Error Log is partially supported for SQL Server 2017 connections.

## Configure monitoring SQL Server
Support is provided for Configure monitoring functions in Spotlight Enterprise for SQL Server 2017 connections with the following exceptions.

* Configure \| Alarm actions - Actions are taken only for alarms supported for SQL Server 2017 connections. No actions are taken for unsupported alarms.
* Configure \| Scheduling - The following SQL Server collections are not supported for SQL Server 2017 connections.
    * Agent Job List
    * Agent Jobs Failed
    * Alert Failures
    * Cluster List
    * Cluster Summary
    * LiteSpeed Activity
    * LiteSpeed Alarm
    * Log Shipping Primaries
    * Log Shipping Secondaries
    * Mirroring

{% include links.html %}
