---
title: Configure Connection Monitoring Properties
summary: "Configure the monitoring properties of a single connection."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_connect_monitor.html
id: 40102
folder: SpotlightEnterprise
---



## How to open this dialog from the Spotlight Client

1. Click **Configure \| Connections**.
2. Right-click the connection and select **Properties \| Monitoring**.


## Select from the following monitoring options.

{% include note.html content="The visibility of some of these options is dependent on connection type." %}

### Monitor this server

Select to monitor this connection using Spotlight Enterprise.

When not selected, no new data is collected by Spotlight Enterprise and therefore no alarms are raised. Existing data in the Playback Database and Spotlight Statistics Repository is preserved.

### Alarms

Configure the alarm settings. For more information, see [Configure \| Alarms][enterprise_cfgmonitor_alarms].

### Schedules

Customize how often data is collected. For more information, see [Configure \| Scheduling][enterprise_cfgmonitor_scheduling].

### Error Log Entries

Request Spotlight raise an alarm when certain SQL error log entries are logged. For more information, see [Configure \| Error Log Entries][enterprise_cfgmonitor_errorlogentries].

### SQL Server Response Time

Set the SQL statement that is used to measure SQL Server response time.

The response time itself can be viewed in the **SQL Server \| SQL Activity** drilldown and the **SQL Server \| Spotlight Overview** page. For more information, see [Configure \| SQL Server Response Time][enterprise_cfgmonitor_sqlserverresponsetime].

### Monitored Files

Track the growth of files (usually log files) on monitored Windows Servers. For more information, see [Configure \| Monitored Files][enterprise_cfgmonitor_monitoredfiles].


{% include links.html %}
