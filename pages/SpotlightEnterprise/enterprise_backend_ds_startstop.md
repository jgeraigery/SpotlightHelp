---
title: Start and stop the Spotlight Diagnostic Server
summary: "The Spotlight Diagnostic Server is a Windows service and can be started and stopped via the Windows Control Panel."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_ds_startstop.html
folder: SpotlightEnterprise
---

To start or stop the Spotlight Diagnostic Server:

1. On the Spotlight Diagnostic Server, open Windows Control Panel.
2. Click **Administrative Tools \| Services**.
3. From the list of available services, double click on the Spotlight Diagnostic Server name: **Spotlight Diagnostic Server**.
4. Click **Start** to start the Spotlight Diagnostic Server. Click **Stop** to stop the service.

{% include note.html content="If you attempt to stop the Spotlight Diagnostic Server whilst a program or command line action that runs in response to an alarm is still executing, the Spotlight Diagnostic Server will wait until that program or command line action has ended before stopping." %}


{% include links.html %}
