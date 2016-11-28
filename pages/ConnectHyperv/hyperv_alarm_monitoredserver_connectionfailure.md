---
title: ﻿Monitored Server - Hyper-V Connection Failure alarm
tags: [hyperv_alarms]
last_updated: July 29, 2016
summary: "Spotlight has failed to connect to the Hyper-V Server. Check the Hyper-V server address, authentication and availability"
sidebar: c_hyperv_sidebar
permalink: hyperv_alarm_monitoredserver_connectionfailure.html
id: alarm_MonitoredServer_ConnectionFailure_Hyperv
folder: ConnectHyperv
---



## Check the connection details

The Hyper-V Server connection details are entered on the Spotlight Client, Hyper-V Server \| Connection Details screen.

From the Spotlight Client

1.  Click **Configure \| Connections**.
2.  Right click on the Hyper-V connection and select **Properties**.
3.  Check the connection details.
4.  Click **Test** to test the connection.

### Hyper-V Server address

Check the address is a valid IP address or hostname of the Hyper-V server.

### Authentication

When **Use Diagnostic Server credentials** is selected then the account running the Spotlight Diagnostic Server is used to connect to the Hyper-V Server. Ensure the Windows user running the Spotlight Diagnostic Server can access the Hyper-V Server.

If you select to fill in the **user** and **password** fields, verify the user has at least a read-only role.

## Hyper-V Server availability

Verify the Hyper-V Server is available and accessible over the network. Verify TCP port 135 is open.


{% include note.html content="The alarm will clear automatically if the error is due to the service being down or network problems and the error condition goes away." %}



{% include links.html %}
