---
title: Connection requirements
summary: "System requirements for a SQL Server database."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_connect_requirements
folder: ConnectSQLServer
---


Spotlight can monitor SQL Server instances of the following versions:

* SQL Server 2016 (32-bit and 64-bit)
* SQL Server 2014 (32-bit and 64-bit)
* SQL Server 2012 (32-bit and 64-bit)
* SQL Server 2008 R2 (32-bit and 64-bit)
* SQL Server 2008 (32-bit and 64-bit)
* SQL Server 2005 (32-bit and 64-bit)

Spotlight on SQL Server also supports MSDE (2000), SQL Express (2005) and SQL Server 2008 Express Edition. Note that use of these versions to host playback or Spotlight Statistics Repository databases is not supported.

Spotlight continues to monitor SQL Server 2000 instances Service Pack 3 or later, however no further support (fixes) will be provided.

Spotlight cannot monitor earlier versions of SQL Server (version 7.x and earlier).

Spotlight supports all SQL Server sort orders, including case-sensitive and binary sort orders. Spotlight cannot monitor SQL Server instances where the instance name contains non-US ASCII characters.

On each monitored instance Spotlight requires the network setting "File and Print Sharing" to be enabled.

UDP port 1434 should be open. If UDP port 1434 is closed then the port number must be included in the address used to connect Spotlight to the SQL Server instance.
