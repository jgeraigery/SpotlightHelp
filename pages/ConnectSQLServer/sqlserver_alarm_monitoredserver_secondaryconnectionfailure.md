---
title: ﻿Monitored Server - SQL Server Secondary Connection Failure alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "The service is not responding."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_monitoredserver_secondaryconnectionfailure.html
id:
folder: ConnectSQLServer
---


* Check the connection to the service.
* Check the availability of the service.
* Check the network.

**Workaround to  error: "Connection 'SQLServerXEventsChannel' failed to connect: Unknown Identifier asked for extended events. Please connect."**
Ensure the Spotlight user monitoring the instance has permission to use Extended Events.

```
use master;
GRANT ALTER ANY EVENT SESSION TO SpotlightUser;
Go

USE master;
GRANT VIEW SERVER STATE TO SpotlightUser;
GO
```

{% include links.html %}
