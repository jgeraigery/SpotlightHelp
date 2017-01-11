---
title: How to limit the number of ports used by WMI
summary: "Windows WMI uses the RPC and DCOM subsystems in Windows. The ports that are used in WMI are auto-negotiated between hosts. In order to effectively use WMI between fire walled hosts, you can limit the number of ports used by the DCOM subsystem and only open those ports."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_wmilimitports.html
folder: SpotlightEnterprise
---

The following outlines instructions to limit the number of ports that DCOM will use.

Follow these instructions on each monitored host.

1. Open regedt32.exe
2. Navigate to HKEY_LOCAL_MACHINE\Software\Microsoft\Rpc
3. If there is no subkey titled "Internet", create one.
4. Inside the Internet key, create a REG_MULTI_SZ value named "Ports". Each line of the Ports value should specify a range of ports available to DCOM. For this example, add a single line that reads "3000-3100".
5. Add a new REG_SZ value named "PortsInternetAvailable", set it to "Y"
6. Add a new REG_SZ value named "UseInternetPorts", set it to "Y"
7. Open up TCP port 135 to internal traffic. (It may also be necessary to open up UDP 135)
8. Open up the DCOM port range (e.g. 3000-3100) to internal traffic.

See the following link for more information:

[http://support.microsoft.com/default.aspx?scid=kb;en-us;154596](http://support.microsoft.com/default.aspx?scid=kb;en-us;154596)



{% include links.html %}
