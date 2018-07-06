---
title: ﻿Monitored Server - SQL Azure Connection Failure alarm
tags: [sqlazure_alarms]
summary: "Spotlight has failed to connect to the SQL Azure database. Check the SQL Azure connection details and SQL Azure availability."
sidebar: c_sqlazure_sidebar
permalink: sqlazure_alarm_monitoredserver_connectionfailure.html
id: alarm_MonitoredServer_ConnectionFailure_SQLAzure
folder: ConnectSQLAzure
---


## Check the connection details

The SQL Azure connection details are entered on the Spotlight Client, SQL Azure \| Connection Details screen.

From the Spotlight Client

1.  Click **Configure \| Connections**.
2.  Right click on the SQL Azure connection and select **Properties**.
3.  Check the connection details.
    * Verify the address is valid and in the form of a URL.
    * Verify the name of the database as entered exists.
    * Verify the user and password as entered are correct.
4.  Click **Test** to test the connection.


## SQL Azure availability

Verify the SQL Azure database is available and accessible to the Spotlight Diagnostic Server.

{% include note.html content="The alarm will clear automatically if the error is due to the service being down or network problems and the error condition goes away." %}


## Configuration
If this alarm is raised too often or not enough you can configure certain parameters. See [Configure Connections][sqlazure_connect_details].


{% include links.html %}
