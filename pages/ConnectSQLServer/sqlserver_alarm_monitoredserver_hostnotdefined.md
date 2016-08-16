---
title: ﻿Monitored Server - SQL Server Host Not Defined Alarm
last_updated: July 29, 2016
summary: ""
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_monitoredserver_hostnotdefined.html
id: alarm_ms_sqlserverhostnotdefined
folder: ConnectSQLServer
---



<p>The <strong>Monitored Server - SQL Server host not defined</strong> alarm is raised for:
<ol>
<li>A Microsoft Cluster Server (MSCS)
<li>Where the <strong>SQL Server Connection Details</strong> dialog <strong>Connection</strong> field is set to <strong>Cluster (monitor active node)</strong>.
<li>And the active cluster node is NOT in the list of available OS connections in the <strong>SQL Server Connection Details</strong> dialog <strong>Linked OS Connection</strong> drop down field.
</ol>

<p>
For a SQL Server cluster that uses the Cluster (monitor active node) feature there must be a Windows connection for each Windows node in the cluster.
See the online help <strong>Spotlight | Spotlight on SQL Server | Connections to SQL Servers</strong> page for more information.
This alarm  clears once the Windows connection has been created.
</p>


The Monitored Server - SQL Server Host Not Defined Alarm is raised for:

* A Microsoft Cluster Server (MSCS)
* Where the SQL Server Connection Details dialog Connection field is set to Cluster (monitor active node).
* And the active cluster node is NOT in the list of available OS connections in the SQL Server Connection Details dialog Linked OS Connection drop down field.


For a SQL Server cluster that uses the Cluster (monitor active node) feature there must be a Windows connection for each Windows node in the cluster. For more information, see SQL Server \| Connection Details. This alarm clears once the Windows connection has been created.

{% include links.html %}
