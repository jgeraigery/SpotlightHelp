---
title: "Partial support for monitoring SQL Server: SQL Server 2017 and Linux hosted SQL Server connections"
last_updated: October 27, 2017
summary: "Spotlight Enterprise provides partial support for monitoring SQL Server 2017 connections and SQL Server connections hosted on Linux."
sidebar: c_sqlserver_sidebar
id: SQL_Statement
permalink: sqlserver_unix_partialsupport.html
folder: ConnectSQLServer
---


## Alarms
The following alarms are not supported when SQL Server 2017 is hosted on Linux:

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
* Mirroring Failedover
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

## Spotlight Overview page for SQL Server connections
When SQL Server is hosted on Linux, on the System panel, Custom Counters are not supported.


## SQL Server Drilldowns

* The SQL Activity \| Custom Counters drilldown is not supported for SQL Server connections hosted on Linux.
* The High Availability drilldown Log Shipping configuration is partially supported for SQL Server 2017 connections hosted on Linux.
* The Support Services \| DTC drilldown is not supported for SQL Server 2017 connections hosted on Linux.
* The Databases \| Disk Space drilldown is not supported for SQL Server 2017 connections hosted on Linux.
* The SQL Agent Error Log is partially supported for SQL Server 2017 connections hosted on Linux.


## Reports

* Some Spotlight Reports for SQL Server are not supported when the SQL Server host is Linux.


## Configure monitoring SQL Server

* Configure \| Connections - The Spotlight Discovery Wizard does not discover SQL Server instances hosted on Linux.
* Configure \| Alarm Actions - For SQL Server 2017 connections hosted on Linux, some alarms are not supported (see above). No Actions are taken for alarms that are not supported. For Linux, there are no equivalent alarm actions for 'Execute a Powershell script' and 'Write the alarm details to a Windows Event log'.
* Configure \| Scheduling - The following SQL Server collections are not supported for SQL Server 2017 connections hosted on Linux.
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
* Configure \| Custom Counters - Custom Counters are not supported for SQL Server connections hosted on Linux.
* Configure \| Monitored Files -  Tracking the growth of files (usually log files) is not supported for the Unix/Linux Connection Type.


## Support bundle
Data from the Linux operating system is not collected for the Support Bundle.


{% include links.html %}
