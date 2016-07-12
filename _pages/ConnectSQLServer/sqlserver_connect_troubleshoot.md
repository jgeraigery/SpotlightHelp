---
title: Troubleshooting
summary: "The Spotlight Diagnostic Server collects data from the SQL Server instances it connects to (Monitored connections) and uses WMI queries to retrieve performance counter information from the Windows Server hosts (Monitoring Windows Servers and hosts of database connections). This data is then displayed in real time on a Spotlight Client or other Spotlight viewer (View data and configure Spotlight)."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_connect_troubleshoot
folder: ConnectSQLServer
---





## SQL Server \| Connection Details

 Use a Spotlight Client to create a connection from the Spotlight Diagnostic Server to the SQL Server instance.

Ensure the address used for this connection is a valid server name, server instance name or IP address. For a Microsoft Cluster Server (MSCS) use the virtual name of the cluster.

Verify UDP port 1434 is open. If UDP port 1434 is closed then the port number must be included in the address used to connect Spotlight to the SQL Server instance.

## SQL Server account permissions

 Spotlight requires necessary account permissions to connect to the SQL Server instance. The user account must have sufficient account permissions to retrieve performance data from the SQL Server instance and host by WMI. Typically a database account will be a member of the sysadmin server role. It could be a SQL Server login (such as 'sa'). If this is not feasible in your environment, a SQL Server account can be configured with the necessary privileges. See How to grant SQL Server account permissions to a trusted user.

The Windows account that runs the Spotlight Diagnostic Server can be used provided that account is trusted by the SQL Server. When using Windows authentication to connect to a SQL Server, and that SQL server is in a different domain to the Spotlight Diagnostic Server, the domain the SQL Server is in must trust the domain the Spotlight Diagnostic Server is in.


 Note: The Spotlight connection to the SQL Server instance will fail if the user account permissions are insufficient to allow Spotlight to collect the data it needs.


## Connection to the Windows host

 Verify the SQL Server host is in a domain. Spotlight cannot monitor a SQL Server database when the Windows host is in a workgroup.

If the SQL Server is hosted within Microsoft Cluster Server (MSCS) then at SQL Server \| Connection Details ensure the Windows Server host is selected as Cluster (monitor active node). Spotlight uses the current host node name to select the operating system connection. Therefore each Windows node in the cluster must be monitored by Spotlight. Verify each Windows node is in the list of Windows server connections.

See also Monitoring Windows Servers and hosts of database connections.

## Troubleshooting WMI

 The Spotlight Diagnostic Server uses WMI queries to retrieve performance counter information from the Windows server host. Verify WMI is working and returns data properly.

Verify TCP port 135 is open on the Windows server host.

## Network ports

 Ensure ports are open as outlined in the Microsoft KBase article that describes SQL Server firewall connectivity issues: http://msdn.microsoft.com/en-us/library/cc646023.aspx.

## Microsoft Data Access Components (MDAC)

 If Spotlight cannot connect to the SQL Server instance you may need to upgrade Microsoft Data Access Components (MDAC) on the Spotlight Client host AND the Spotlight Diagnostic Server host. More information is available from the Microsoft Download Center (search for MDAC).

## Troubleshooting

 If Spotlight cannot connect to the SQL Server instance then use another tool such as Microsoft's SQL Server Management Studio or sqlcmd to connect to the SQL Server instance. Is the issue with Spotlight's ability to connect to the SQL Server instance or with any any/every tool's ability to connect to the SQL Server instance?

Check the System Requirements and Known Issues sections of the Spotlight on SQL Server Release Notes for further assistance.
