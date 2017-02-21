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

{% include tip.html content="[Learn more about SQL Server Management Studio](https://msdn.microsoft.com/en-us/library/ms174173.aspx)" %}

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

3) How often is data collected? Is this configurable?

The data is collected at regular times. Most data is collected daily, but some data such as wait statistics and SQL are collected at hourly intervals, or once per day. This is not configurable by the customer.
4) Will Spotlight Developer run any traces on the system, or is all data captured from Dynamic Management Views?

Spotlight Developer does not run traces. All data is captured by the Dynamic Management View.
5) When is data uploaded to the Spotlight website?

Uploads occur every hour.
6) If 3 users all install the Spotlight Developer, will data be captured 3 times?

You can now share a Diagnostic Server with other users and in doing so you will only capture data once. To share a Diagnostic Server open SQL Server Management Studio and go to "Settings" in the "Spotlight" menu and select "Diagnostic Server Configuration". You can then enter the address of the Diagnostic Server you wish to share.
7) Is data temporarily stored anywhere? Where?

Yes, performance data is collected and temporarily stored in the Diagnostic Server which is installed under C:\%Program Files%\Dell\Spotlight Developer Diagnostic Server\Agent folder. This performance data is then zipped, uploaded and then deleted once per day.
8) What data is being sent by the Spotlight Developer?

Spotlight Developer collects system configuration and performance metrics from your SQL Server environment and uploads it to SpotlightEssentials.com. Once it's uploaded we store it for analysis and consumption by the end user. From the data and subsequent analysis SpotlightTM Essentials is able to generate a picture of your systems health and performance. To find out more please review the information available on the data handling and security page.

{% include links.html %}
