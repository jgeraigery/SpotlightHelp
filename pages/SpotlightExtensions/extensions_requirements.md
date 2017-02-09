---
title: Spotlight Extensions Requirements
sidebar: p_extensions_sidebar
permalink: extensions_requirements.html
---



## Installation

Spotlight Extensions can be installed in:

* SQL Server Management Studio 2016
* SQL Server Management Studio 2014
* SQL Server Management Studio 2012

Spotlight Extensions runs in 64 bit.
Spotlight Extensions can be installed to work for the current computer user or all users of the computer.

## Monitoring

Spotlight Extensions monitors:

* SQL Server 2016
* SQL Server 2014
* SQL Server 2012
* SQL Server 2008 R2
* SQL Server 2008

## SQL Server authentication
Ensure each SQL Server connection from the Spotlight Diagnostic Server has access to a SQL Server account that is a member of the sysadmin server role. This can be a SQL Server login (such as 'sa'), or the Spotlight Diagnostic Server can be installed to run under a Windows account that is trusted by SQL Server.

Alternatively, run this [SQL script][sqlserver_connect_accountgrantpermissions] (as sysadmin) to grant the required permissions to a trusted user.

The connection will fail if the account permissions are insufficient to allow Spotlight to collect the data it needs

{% include links.html %}
