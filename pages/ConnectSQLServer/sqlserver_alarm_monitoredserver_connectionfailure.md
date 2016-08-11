---
title: ﻿Monitored Server - SQL Server Connection Failure Alarm
last_updated: July 29, 2016
summary: "The service is not responding."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_monitoredserver_connectionfailure.html
id:
folder: ConnectSQLServer
---


* Check the connection to the service.
* Check the availability of the service.
* Check the network.

If WMI queries fail then a Windows Connection Failure alarm is raised on the third successive failed attempt, not on every failed attempt.


{% include links.html %}
