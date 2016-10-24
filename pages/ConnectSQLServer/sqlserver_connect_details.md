---
title: Connection Details for SQL Server
last_updated: July 29, 2016
tags: [connection_details,connection_details_for_each_connection_type]
summary: "Specify the connection details for a SQL Server database."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_connect_details.html
folder: ConnectSQLServer
---


{% include tip.html content="Spotlight can add multiple SQL Server instances via discovery or by importing details from a file. See the Connection Discovery Wizard." %}

## How to enter / edit connection details

Use a Spotlight Client to enter / edit connection details.

From the Spotlight Client

1.  Click **Configure \| Connections**.
2.  Double click **Add new connection**.
3.  Fill in the connection details as follows.
4.  Click **Test** to test the connection.


## Address

 The connect string used to link to the SQL Server (that is, the Server Name, Server Instance Name, or IP address).

For a Microsoft Cluster Server (MSCS) enter the virtual name of the cluster.

## Authentication

 The authentication for Spotlight to use to connect to the SQL Server instance.

Select Windows Authentication (using Diagnostic Server credentials) to use the Windows user configured to run the Spotlight Diagnostic Server. Ensure this account is trusted by the SQL Server.

Alternatively, fill in the Database User and Password fields. Ensure the database user has sufficient account permissions to retrieve performance data from the SQL Server instance and host by WMI. Typically the account will be a member of the sysadmin server role. It could be a SQL Server login (such as 'sa'). If this is not feasible in your environment, see How to grant SQL Server account permissions to a trusted user.

The connection will fail if the account permissions are insufficient to allow Spotlight to collect the data it needs.

## Read Only Intent

 Select this option if the SQL Server instance hosts a secondary replica of an Availability Group and for this secondary replica ApplicationIntent=ReadOnly. Failure to select this option when required will result in some data not being collected for the secondary replica; this will be most noticeable on the SQL Server \| Databases drilldown.

## Use Extended Events

### Selected

The Spotlight Diagnostic Server will use Extended Events to collect data from the SQL Server instance. The data is used by:

* SQL Server \| Workload Analysis Drilldown
* SQL Server \| Wait Events Drilldown
* Deadlock checks: SQL Server \| SQL Activity Drilldown, Locks - Deadlocks Alarm.

If you select to use Extended Events (following a period of time when the use of Extended Events was deselected) the SQL Server \| Workload Analysis Drilldown and SQL Server \| Wait Events Drilldown may take a few minutes to repopulate with data.

### Not Selected

The Spotlight Diagnostic Server will use SQL Server Trace to collect data for deadlock checks. The Spotlight Diagnostic Server will NOT collect data for the SQL Server \| Workload Analysis Drilldown and SQL Server \| Wait Events Drilldown.

If you set this value after the connection to the SQL Server is established then the change will not show up immediately on the user interface as the Workload Analysis Drilldown and Wait Events Drilldown will continue to show historical data till no data is available.

{% include note.html content="The setting for Use Extended Events can be set collectively for all SQL Server on the Spotlight Diagnostic Server from Configure the use of Extended Events." %}


## Obscure string literals in SQL text and parameters in query plans

### Selected

Dummy text replaces string literals in all displays of the SQL Statement and Query Plan. This protects privacy information that may be contained in those literals.

Large numbers  (greater than 99,999,999) are replaced with 987654321.

### Not Selected

Large numbers and string literals in SQL Statements and Query Plans are displayed as is.


## Exclude Spotlight sessions from Wait Events and Workload Analysis

When selected Spotlight sessions are excluded from the Wait Events and Workload Analysis drilldowns.

{% include note.html content="For monitored SQL Server versions earlier than SQL Server 2012 some long term Spotlight sessions may remain. For monitored SQL Server 2012 and above all Spotlight Sessions are excluded." %}


## Connection
Select the Windows server hosting the SQL Server.

### Do not monitor
Select **Do not monitor** if you do not want to monitor the Windows server.

### Cluster (monitor active node)
Select **Cluster (monitor active node)** for a Microsoft Cluster Server (MSCS).

Spotlight uses the current host node name to select the operating system connection. Therefore each Windows node in the cluster must be monitored by Spotlight. Verify each Windows node is in the list of Windows server connections.


Click **Create** to add a Windows server to the list. This opens [Windows Server \| Connection Details][windows_connect_details].

{% include links.html %}
