---
title: ﻿Monitored Server - SQL Azure Connection Failure Alarm
last_updated: July 29, 2016
summary: "Spotlight has failed to connect to the SQL Azure database."
sidebar: c_sqlazure_sidebar
permalink: sqlazure_alarm_monitoredserver_connectionfailure.html
id: alarm_MonitoredServer_ConnectionFailure_SQLAzure
folder: ConnectSQLAzure
---


Possible things to consider:

## SQL Azure connection details

The SQL Azure connection details are entered on the SQL Azure \| Connection Details screen. Click Configure \| Connections and select the SQL Azure connection type; right click on the connection and select Properties.

Spotlight uses the connection details to connect to the SQL Azure database. Verify they are correct. Verify the address is valid and in the form of a URL. Verify the name of the database as entered exists. Verify the user and password as entered are correct.

## SQL Azure availability

Verify the SQL Azure database is available and accessible to the Spotlight Diagnostic Server.

{% include note.html content="The alarm will clear automatically if the error is due to the service being down or network problems and the error condition goes away." %}


{% include links.html %}
