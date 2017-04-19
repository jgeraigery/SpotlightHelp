---
title: Cannot connect to the Spotlight Diagnostic Server on web service port 40403
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_ds_40403.html
id: 1010
folder: SpotlightEnterprise
---


The Spotlight Client cannot connect to the Spotlight Diagnostic Server on Web service port 40403.

The most common reasons for this problem are as follows:

## Network ports

TCP 40403 must be open for incoming connections on the Spotlight Diagnostic Server host.

* Verify a firewall is not blocking port 40403 traffic.
* Verify no other service is using port 40403.
* Verify port 40403 is not configured as an ephemeral port. This issue may arise if you have configured your Windows ports beyond Windows Factory settings or your Windows host is Windows 2008 with Exchange Server 2007. For more information on ephemeral (dynamic) ports, see [https://support.microsoft.com/en-us/kb/929851](https://support.microsoft.com/en-us/kb/929851)

For more information on Network Ports in Spotlight Enterprise, see [Network Ports][enterprise_backend_networkports].

## Verify Internet Options on the Spotlight Client

The Spotlight Client connects to the Spotlight Diagnostic Server via Internet port 40403. If you have customized Internet Options on the Spotlight Client, verify that your customized configurations do not conflict with Spotlight.

For more information, see [Internet Options on the Spotlight Client][enterprise_interface_client_internetoptions].



{% include links.html %}
