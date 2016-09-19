---
title: ﻿Monitored Server - Hyper-V Connection Failure Alarm
last_updated: July 29, 2016
summary: "Spotlight has failed to connect to the Hyper-V Server. Check the Hyper-V server address, authentication and availability"
sidebar: c_hyperv_sidebar
permalink: hyperv_alarm_monitoredserver_connectionfailure.html
id: alarm_MonitoredServer_ConnectionFailure_Hyperv
folder: ConnectHyperv
---



## Hyper-V Server address

The Hyper-V Server address is entered on the Hyper-V Server \| Connection Details screen. Click Configure \| Connections and select the Hyper-V connection type; right click on the connection and select Properties.

Check the address is a valid IP address or hostname of the Hyper-V server.

## Authentication

Authentication to the Hyper-V Server is defined on the Hyper-V Server \| Connection Details screen. Click Configure \| Connections and select the Hyper-V connection type; right click on the connection and select Properties.

When Use Diagnostic Server credentials is selected then the account running the Spotlight Diagnostic Server is used to connect to the Hyper-V Server. Ensure the Windows user running the Spotlight Diagnostic Server can access the Hyper-V Server.

If you select to fill in the user and password fields, verify the user has at least a read-only role.

## Hyper-V Server availability

Verify the Hyper-V Server is available and accessible over the network. Verify TCP port 135 is open.


{% include note.html content="The alarm will clear automatically if the error is due to the service being down or network problems and the error condition goes away." %}



{% include links.html %}
