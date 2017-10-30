---
title: SQL Server connection requirements
last_updated: October 16, 2017
tags: [connection_requirements]
summary: "Spotlight can monitor a SQL Server instance fulfilling the following requirements."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_connect_requirements.html
folder: ConnectSQLServer
---


Spotlight can monitor SQL Server instances of the following versions, editions Enterprise, Standard and Express:

* SQL Server 2017 (64-bit)
* SQL Server 2016 (64-bit)
* SQL Server 2014 (32-bit and 64-bit)
* SQL Server 2012 (32-bit and 64-bit)
* SQL Server 2008 R2 (32-bit and 64-bit)
* SQL Server 2008 (32-bit and 64-bit)
* SQL Server 2005 (32-bit and 64-bit)

Partial support is provided for monitoring SQL Server 2017 connections on Linux hosts. For more information on monitoring SQL Server connections on Linux hosts, particularly SQL Server 2017 connections, see: [Partial support for monitoring SQL Server: SQL Server 2017 and Linux hosted SQL Server connections][sqlserver_unix_partialsupport].

Spotlight Enterprise also supports MSDE (2000), SQL Express (2005) and SQL Server 2008 Express Edition. Note that use of these versions to host playback or Spotlight Statistics Repository databases is not supported.

Spotlight cannot monitor earlier versions of SQL Server (SQL Server 2000 and earlier).

Spotlight supports all SQL Server sort orders, including case-sensitive and binary sort orders. Spotlight cannot monitor SQL Server instances where the instance name contains non-US ASCII characters.

On each monitored instance Spotlight requires the network setting "File and Print Sharing" to be enabled.

If the SQL Server instance is hosted on a Windows server and UDP port 1434 is closed then the port number must be included in the address used to connect Spotlight to the SQL Server instance.

{% include links.html %}
