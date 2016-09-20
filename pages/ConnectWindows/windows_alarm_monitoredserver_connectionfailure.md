---
title: ﻿Monitored Server - Windows Connection Failure Alarm
last_updated: July 29, 2016
summary: "Spotlight has failed to connect to the Windows Server. Check the Windows Server address and Windows account authentication."
sidebar: c_windows_sidebar
permalink: windows_alarm_monitoredserver_connectionfailure.html
id: alarm_MonitoredServer_ConnectionFailure_Windows
folder: ConnectWindows
---

## Windows Server address

The Windows Server address is entered on the Windows Server \| Connection Details screen. Click Configure \| Connections and select the Windows connection type; right click on the connection and select **Properties**.

Check the address is a valid IP address, hostname, or URL of the Windows Server.

If the Windows Server is in a different domain to the Spotlight Diagnostic Server host then verify the address is fully qualified  (for example, machine1.domain.company.corp). The connection may work intermittently if the address is not fully qualified.

Verify the Windows Server is in a domain. Spotlight cannot connect to Windows servers in a workgroup.

## Windows account authentication

Authentication to the Windows Server is defined on the Windows Server \| Connection Details screen. Click Configure \| Connections and select the Windows connection type; right click on the connection and select Properties.

When Use Diagnostic Server credentials is selected then the account running the Spotlight Diagnostic Server is used to connect to the Windows Server. If the Windows Server is remote from the Spotlight Diagnostic Server then ensure the Windows user running the Spotlight Diagnostic Server can access the Windows Server. (By default the Spotlight Diagnostic Server runs under the "Local System" account, which will not have privileges on a remote Windows Server). If the Windows Server is in a different domain from the Spotlight Diagnostic Server then ensure the domain the Windows Server is in trusts the domain of the user running the Spotlight Diagnostic Server. You are required to select this option if the Windows Server is the Spotlight Diagnostic Server host.

When filling in the User and Password fields, include the Windows domain in the user name. For example, “domain\\johnsmith”, instead of “johnsmith”. Verify the user has the privileges required to retrieve server information, query the registry, and access WMI and performance monitor objects. A user account with administrative rights to the Windows server allows this. Alternatively an account can be configured with the necessary privileges as documented in the online help.

## WMI Operability

Verify WMI is working and returns data properly. Verify TCP port 135 is open on the Windows server. For more information see Troubleshooting WMI in the online help.

## Windows Server availability

Verify the Windows Server is available and accessible over the network.

{% include note.html content="The alarm will clear automatically if the error is due to the service being down or network problems and the error condition goes away." %}

{% include links.html %}
