---
title: Add / Remove / Configure connections monitored by Spotlight Extenions
summary: ""
sidebar: p_extensions_sidebar
permalink: extensions_monitoring_configureconnections.html
folder: SpotlightExtensions
---

## Open the Configure Connections dialog

1. Open SQL Server Management Studio.
2. From the **Spotlight** menu, select **Configure Connections**.

   {% include imageExtensions.html file="ssms-diagram2.jpg" alt="New Connection" %}


## New Connection

## SQL Server authentication
Supply authenticaion details to connect to the SQL Server.

Ensure each SQL Server connection from the Spotlight Diagnostic Server has access to a SQL Server account that is a member of the sysadmin server role. This can be a SQL Server login (such as 'sa'), or the Spotlight Diagnostic Server can be installed to run under a Windows account that is trusted by SQL Server.

Alternatively, run this [SQL script][sqlserver_connect_accountgrantpermissions] (as sysadmin) to grant the required permissions to a trusted user.

The connection will fail if the account permissions are insufficient to allow Spotlight to collect the data it needs

## Test
Click **Test** to make sure the details are correct.



{% include links.html %}
