---
title: ﻿Monitored Server - SQL Server Connection Failure Alarm
last_updated: July 29, 2016
summary: "The service is not responding."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_monitoredserver_connectionfailure.html
id: alarm_MonitoredServer_ConnectionFailure_SQLServer
folder: ConnectSQLServer
---




<p>Spotlight has failed to connect to the SQL Server.</p>

<p>Possible things to consider:</p>

<p><b>SQL Server address</b></p>
<p>The SQL Server address is entered on the SQL Server | Connection Details screen. Click Configure | Connections and select the SQL Server connection type; right click on the connection and select Properties.</p>
<p>Check the address is a valid server name, server instance name or IP address.</p>
<p>For a Microsoft Cluster Server (MSCS) use the virtual name of the cluster.</p>

  <p><b>Authentication</b></p>
  <p>Authentication to the SQL Server is defined on the SQL Server | Connection Details screen. Click Configure | Connections and select the SQL Server connection type; right click on the connection and select Properties.</p>

  <p>The connection will fail if the account permissions are insufficient to allow Spotlight to collect the data it needs.</p>

  <p>When Use Diagnostic Server credentials is selected then the account running the Spotlight Diagnostic Server is used to connect to the SQL Server. Ensure this account is trusted by the SQL Server.</p>

<p>When filling in the User and Password fields, ensure the database user has sufficient account permissions to retrieve performance data from the SQL Server instance and host by WMI. Typically the account will be a member of the sysadmin server role. It could be a SQL Server login (such as 'sa'). Alternatively an account can be configured with the necessary privileges as documented in the online help.</p>

  <p><b>Connection</b></p>
  <p>The connection to the SQL Server host is defined on the SQL Server | Connection Details screen. Click Configure | Connections and select the SQL Server connection type; right click on the connection and select Properties.</p>
<p>Verify the SQL Server host is in a domain. Spotlight cannot monitor a SQL Server database when the Windows host is in a workgroup.</p>

  <p><b>WMI Operability</b></p>
  <p>Verify WMI is working and returns data properly. Verify TCP port 135 is open on the Windows server host. For more information see Troubleshooting WMI in the online help.</p>

  <p><b>UDP port 1434</b></p>
  <p>If UDP port 1434 is closed then the port number must be included in the address used to connect Spotlight to the SQL Server instance.</p>

  <p><b>Microsoft Data Access Components (MDAC)</b></p>
  <p>You may need to upgrade Microsoft Data Access Components (MDAC) on the Spotlight Client host AND the Spotlight Diagnostic Server host. More information is available from the Microsoft Download Center (search for MDAC).</p>

  <p><b>SQL Server availability</b></p>
  <p>Verify the SQL Server instance is available and accessible over the network.</p>

<p><strong>Note:</strong> The alarm will clear automatically if the error is due to the service being down or network problems and the error condition goes away.</p>

* Check the connection to the service.
* Check the availability of the service.
* Check the network.

If WMI queries fail then a Windows Connection Failure alarm is raised on the third successive failed attempt, not on every failed attempt.


{% include links.html %}
