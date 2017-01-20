---
title: Deployment over the Windows Network
summary: "A Spotlight Enterprise deployment consists of many components that may be spread over a wide network."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_windowsnetwork.html
id: 1000
folder: SpotlightEnterprise
---

## Network ports
Spotlight's ability to function, to collect and display data, may depend on account permissions granted over the network and specific open network ports.

See [Network Ports][enterprise_backend_networkports]

## Spotlight diagnostic user groups
Spotlight diagnostic user groups are Windows groups created on install of Spotlight. Spotlight uses these groups to authenticate Spotlight Client access to the Spotlight Diagnostic Server. Membership of these groups affects the Spotlight Client's ability to configure Spotlight and execute actions on monitored Windows Server and SQL Server instances.

See [Spotlight diagnostic user groups][enterprise_backend_spotlightdiagnosticusergroups]

## Troubleshooting WMI
The Spotlight Diagnostic Server uses WMI queries to retrieve performance counter information from Windows server hosts. Verify WMI is working and returns data properly.

See [Troubleshooting WMI][enterprise_backend_wmitroubleshooting]

## How to limit the number of ports used by WMI
In order to effectively use WMI between fire walled hosts, you can limit the number of ports used by the DCOM subsystem and only open those ports.

See [How to limit the number of ports used by WMI][enterprise_backend_wmilimitports]

{% include links.html %}
