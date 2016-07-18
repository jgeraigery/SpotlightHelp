---
title: Services - Service Not Running Alarm
summary: "The Services - Service Not Running alarm occurs when a Windows service that is set to start automatically is not running."
sidebar: c_windows_sidebar
permalink: windows_alarm_services_servicenotrunning.html
folder: ConnectWindows
---

You can start services from the Processes drilldown. Note, you must be a member of the Spotlight Diagnostic Administrators group to use the Start Service option.

## To start the service:

1. Select the connection in the Spotlight Browser.
2. Click **Monitor \| Processes**.
3. Select **Services**.
4. Right-click the service that is not running and select **Start Service**.

{% include note.html content="You can configure this alarm to ignore certain values. See *Configure an Alarm to Ignore Certain Values* in the online help. You can configure different severity alarms for different services using keys. See **Configure Keyed Alarms** in the online help for more information." %}
