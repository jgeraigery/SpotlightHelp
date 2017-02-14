---
title: Services - Full Text Search alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "This alarm becomes active when this SQL Server supporting service is installed but not active."
sidebar: c_sqlserver_sidebar
id: Home.btnServices.SQLServerServiceStatus.Alarm
permalink: sqlserver_alarm_services_fulltextsearch.html
folder: ConnectSQLServer
---


Services currently monitored are:

* SQL Server Agent (SQLServerAgent) service.
* Distributed Transaction Coordinator (MSDTC) service.
* Microsoft OLAP/Analysis (MSSQLServerOLAPService) service.
* Full-Text Search (Microsoft Search) service.
* The SQL Server Integration service.
* The SQL Server Reporting service.


When this alarm is current:

* Check the **SQL Server \| Support Services drilldown \| Service Status page** to see the status of all known SQL Server support services.
* Review messages in the **SQL Server \| Error Log drilldown** to determine the reason the service is not running.
* Restart the affected service if necessary. Right click the service in the **SQL Server \| Support Services drilldown \| Service Status page \| Service Status grid**.


{% include links.html %}
