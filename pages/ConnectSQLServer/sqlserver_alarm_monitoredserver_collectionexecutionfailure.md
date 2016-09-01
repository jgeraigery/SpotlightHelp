---
title: ﻿Monitored Server - SQL Server Collection Execution Failure Alarm
last_updated: July 29, 2016
summary: "Raised when a (specified collection) failed to execute against the server."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_monitoredserver_collectionexecutionfailure.html
id: procedureexecutionfailure.alarm
folder: ConnectSQLServer
---


The specified collection failed to execute against this server.

To disable this alarm, go to the Alarms dialog for this connection and add a disabled severity to the 'Monitored Server - Collection Execution Failure' alarm for this collection.

To do this:

1. Select **Configure \| Alarms**.
2. Select the connection where the collection failed.
3. Select the alarm **Monitored Server - Collection Execution Failure** for the connection type.
4. Select **Override default setting for alarm 'Monitored Server - Collection Execution Failure'**.
5. Click **Add**.
6. From the Key value list, select the collection that the alarm was raised for.
7. With the key selected, click the Severity list and select **Disabled**.


{% include links.html %}
