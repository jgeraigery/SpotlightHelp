---
title: Configure monitoring
summary: "Configure Spotlight from the Spotlight Client Configure ribbon."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_monitoring.html
folder: SpotlightEnterprise
---

{% include inline_imageClient.html file="tb_config_connections.png" alt="Connections" %} | [Connections][enterprise_cfgmonitor_connect] | Manage the connections monitored by Spotlight.
{% include inline_imageClient.html file="tb_config_alarms.png" alt="Alarms" %} | [Alarms][enterprise_cfgmonitor_alarms] | Set the thresholds and severities that determine when an alarm is raised. Disable an alarm. Set an alarm to require acknowledgment. Configure keyed alarms. Collect additional diagnostic information on an alarm.
{% include inline_imageClient.html file="tb_config_alarmactions.png" alt="Alarm Actions" %} | [Alarm Actions][enterprise_cfgmonitor_alarmactions] | Set actions for Spotlight to take when an alarm is raised. The actions Spotlight can take include running a program and sending an email. Conditions on taking the action can be defined, such as the day of the week, the time of day, the severity of the alarm, the alarm type and the connection type.
{% include inline_imageClient.html file="tb_config_scheduling.png" alt="Scheduling" %} | [Scheduling][enterprise_cfgmonitor_scheduling] | Spotlight collects data according to these set schedules.
{% include inline_imageClient.html file="tb_config_plannedoutage.png" alt="Planned Outage" %} | [Planned Outage][enterprise_cfgmonitor_plannedoutage] | Enter the scheduled maintenance times for the connections Spotlight monitors so Spotlight does not raise alarms and attempt to collect data during the outage period.
{% include inline_imageClient.html file="tb_config_sqlanalysisfilters.png" alt="SQL Analysis" %} | [SQL Analysis][enterprise_cfgmonitor_sqlanalysis] | Enable SQL Analysis. Configure the filters used to gather SQL Analysis data.
{% include inline_imageClient.html file="tb_config_sqlserverresponse.png" alt="SQL Server Response Time" %} | [SQL Server Response Time][enterprise_cfgmonitor_sqlserverresponsetime] | Set the SQL statement that is used to measure SQL Server response time.
{% include inline_imageClient.html file="tb_config_customcounters.png" alt="Custom Counters" %} | [Custom Counters][enterprise_cfgmonitor_customcounters] | Create and configure Custom Counters for monitoring connections to SQL Servers and Windows servers.
{% include inline_imageClient.html file="tb_config_errorlogentries.png" alt="Error Log Entries" %} | [Error Log Entries][enterprise_cfgmonitor_errorlogentries] | Request Spotlight raise an alarm when a specified entry is logged in the SQL Server error log.
{% include inline_imageClient.html file="tb_config_monitoredfiles.png" alt="Monitored Files" %} | [Monitored Files][enterprise_cfgmonitor_monitoredfiles] | Track the growth of specified files (usually log files) on monitored Windows Servers.

{% include links.html %}
