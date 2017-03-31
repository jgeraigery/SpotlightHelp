---
title: Partial support for monitoring SQL Server v.Next hosted on Linux
last_updated: March 28, 2017
summary: "Spotlight Enterprise now provides partial support for monitoring SQL Server hosted on Linux."
sidebar: c_sqlserver_sidebar
id: SQL_Statement
permalink: sqlserver_unix_partialsupport.html
folder: ConnectSQLServer
---


## Alarms
Support is provided for SQL Server connections hosted on Linux with the following exceptions. The following alarms are not supported:

* Clusters - Failed over
* Clusters - File Share Witness inaccessible
* Clusters - Node unavailable
* Clusters - non-Preferred Node
* Databases - Dynamic Data File Group Growths Remaining
* Databases - Dynamic Log File Growths Remaining
* Databases - Data File Group Space Used
* Databases - Log File Space Used
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
* Virtualization alarms


## Spotlight Overview page for SQL Server connections
Support is provided for SQL Server connections hosted on a Linux with the following exceptions.

* On the System panel, Custom Counters are not supported for SQL Server connections hosted on Linux.
* On the Processes panel, the Virtualization component is not supported for SQL Server connections hosted on Linux.

## Drilldowns for SQL Server connections
Support is provided for SQL Server connections hosted on Linux with the following exceptions.

* The SQL Activity \| Custom Counters drilldown is not supported for SQL Server connections hosted on Linux.
* The High Availability drilldown is not supported for SQL Server connections hosted on Linux.
* The Support Services \| DTC drilldown is not supported for SQL Server connections hosted on Linux.
* The Databases \| Disk Space drilldown is not supported for SQL Server connections hosted on Linux.
* The Error Log \| SQL Agent Error Logs are not supported for SQL Server connections hosted on Linux.

## Spotlight Enterprise monitoring displays
Support is provided for standard Spotlight Enterprise displays. Monitoring from the Heat Map, Spotlight Today, Alarms by Time and the Alarm log is supported for SQL Server connections hosted on Linux. The Playback facility is supported for SQL Server connections hosted on Linux.

* Some Spotlight Reports for SQL Server are not supported where the SQL Server host is Linux.

## Configure monitoring SQL Server
Support is provided for Configure monitoring functions in Spotlight Enterprise for SQL Server connections hosted on Linux with the following exceptions.

* Configure \| Connections - The Spotlight Discovery Wizard does not discover SQL Server instances hosted on Linux.
* Configure \| Alarm actions - Actions are taken only for alarms supported for SQL Server connections hosted on Linux. No actions are taken for unsupported alarms. There are no equivalent to alarm actions for 'Execute a Powershell script' and 'Write the alarm details to a Windows Event log'.
* Configure \| Scheduling - The following SQL Server collections are not supported where the SQL Server is hosted on Linux.
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
* Configure \| Error Log Entries - SQL Agent Error Logs are not supported for SQL Server connections hosted on Linux.
* Configure \| Monitored Files -  Tracking the growth of files (usually log files) is not supported for the Unix/Linux Connection Type.


## Support bundle
Data from the Linux operating system is not collected for the Support Bundle.

{% include links.html %}
