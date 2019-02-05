---
title: Services - Service Not Running alarm
tags: [windows_alarms]
summary: "The Services - Service Not Running alarm occurs when a Windows service that is set to start automatically is not running."
sidebar: c_windows_sidebar
permalink: windows_alarm_services_servicenotrunning.html
id: ServiceNotRunning.alarm
folder: ConnectWindows
---


{% include note.html content="This alarm now excludes Trigger and Delayed Start Automatic services for Windows Server 2016 and above." %}


## To start the service from the Spotlight Client

1. Select the connection from the **Connections** pane.
2. Click **Monitor \| Processes**.
3. Select **Services**.
4. Right-click the service that is not running and select **Start Service**.

{% include note.html content="You must be a member of the Spotlight Diagnostic Administrators group to use the **Start Service** option." %}


{% include note.html content="You can configure this alarm to ignore certain values. You can configure different severity alarms for different services using keys. " %}
