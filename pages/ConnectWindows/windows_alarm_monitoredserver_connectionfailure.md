---
title: ﻿Monitored Server - Windows Connection Failure Alarm
last_updated: July 29, 2016
summary: "Spotlight has failed to connect to the Windows Server."
sidebar: c_windows_sidebar
permalink: windows_alarm_monitoredserver_connectionfailure.html
id: alarm_MonitoredServer_ConnectionFailure_Windows
folder: ConnectWindows
---

<p>Possible things to consider:</p>
<parml>
 <plentry>
  <pt><uicontrol>Windows Server address</uicontrol></pt>
  <pd>
<p>The Windows Server address is entered on the Windows Server | Connection Details screen. Click Configure | Connections and select the Windows connection type; right click on the connection and select Properties.</p>
<p>Check the address is a valid IP address, hostname, or URL of the Windows Server.</p>
<p>If the Windows Server is in a different domain to the Spotlight Diagnostic Server host then verify the address is fully qualified  (for example, machine1.domain.company.corp). The connection may work intermittently if the address is not fully qualified.</p>
<p>Verify the Windows Server is in a domain. Spotlight cannot connect to Windows servers in a workgroup.</p>
  </pd>
 </plentry>
 <plentry>
  <pt><uicontrol>Windows account authentication</uicontrol></pt>
  <pd>
  <p>Authentication to the Windows Server is defined on the Windows Server | Connection Details screen. Click Configure | Connections and select the Windows connection type; right click on the connection and select Properties.</p>

  <p>When Use Diagnostic Server credentials is selected then the account running the Spotlight Diagnostic Server is used to connect to the WIndows Server. If the Windows Server is remote from the Spotlight Diagnostic Server then ensure the Windows user running the Spotlight Diagnostic Server can access the Windows Server. (By default the Spotlight Diagnostic Server runs under the "Local System" account, which will not have privileges on a remote Windows Server). If the Windows Server is in a different domain from the Spotlight Diagnostic Server then ensure the domain the Windows Server is in trusts the domain of the user running the Spotlight Diagnostic Server. You are required to select this option if the Windows Server is the Spotlight Diagnostic Server host. </p>

<p>When filling in the User and Password fields, include the Windows domain in the user name. For example, “domain\johnsmith”, instead of “johnsmith”. Verify the user has the privileges required to retrieve server information, query the registry, and access WMI and performance monitor objects. A user account with administrative rights to the Windows server allows this. Alternatively an account can be configured with the necessary privileges as documented in the online help.</p>
  </pd>
 </plentry>
  <plentry>
  <pt><uicontrol>WMI Operability</uicontrol></pt>
  <pd>Verify WMI is working and returns data properly. Verify TCP port 135 is open on the Windows server. For more information see Troubleshooting WMI in the online help.</pd>
 </plentry>
 <plentry>
  <pt><uicontrol>Windows Server availability</uicontrol></pt>
  <pd>Verify the Windows Server is available and accessible over the network.</pd>
 </plentry>
 </parml>

<note type="note">The alarm will clear automatically if the error is due to the service being down or network problems and the error condition goes away.</note>
</context>




* Check the connection to the service.
* Check the availability of the service.
* Check the network.

If WMI queries fail then a Windows Connection Failure alarm is raised on the third successive failed attempt, not on every failed attempt.


{% include links.html %}
