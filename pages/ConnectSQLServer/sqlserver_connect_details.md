---
title: SQL Server Connection details
tags: [connection_details]
summary: "Specify the connection details for a SQL Server database."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_connect_details.html
folder: ConnectSQLServer
---


TIP: Spotlight can add multiple SQL Server instances via discovery or by importing details from a file. See the Connection Discovery Wizard.


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

## Connection
 Select the Windows server hosting the SQL Server.

### Do not monitor
 Select Do not monitor if you do not want to monitor the Windows server.

### Cluster (monitor active node)
 Select Cluster (monitor active node) for a Microsoft Cluster Server (MSCS).

Spotlight uses the current host node name to select the operating system connection. Therefore each Windows node in the cluster must be monitored by Spotlight. Verify each Windows node is in the list of Windows server connections.


Click Create to add a Windows server to the list. This opens Windows Server \| Connection Details.

{% include links.html %}
