---
title: Monitoring connections
summary: "Monitoring connections in a federation."
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_federation_monitor.html
folder: SpotlightEnterprise
---

## Custom views
Any monitored connection in the federation can be added to any custom view. All Spotlight Clients have access to all custom views in the federation.

When a Spotlight Diagnostic Server joins a federation then the custom views from that Spotlight Diagnostic Server will be seen by all Spotlight Clients in the federation. Any two custom views with the same name will be merged into one view.

{% include note.html content="Spotlight Enterprise Views from all Spotlight Diagnostic Server in the federation will also be seen by all Spotlight Clients in the federation. If there are two Enterprise Views with the same name, the Enterprise View from the Configuration server will override the local Enterprise View. Note that Spotlight is deprecating Enterprise Views. We recommend taking advantage of the new Custom Views to monitor your SQL Server instances in groups." %}

## Configure monitoring
Configure monitoring of Spotlight connections from any Spotlight Client in the federation.

Icon | Ribbon Select | Description
-----|---------------|------------
{% include inline_imageClient.html file="tb_config_connections.png" alt="Connections" %} | Connections | Manage the connections monitored by Spotlight. 
{% include inline_imageClient.html file="tb_config_alarms.png" alt="Alarms" %} | Alarms | Set the thresholds and severities that determine when an alarm is raised. Select any template or monitored connection in the federation to configure.
{% include inline_imageClient.html file="tb_config_alarmactions.png" alt="Alarm Actions" %} | Alarm Actions | Set actions for Spotlight to take when an alarm is raised. Alarm Action Rules may be specific to one Spotlight Diagnostic Server or applied to all Spotlight Diagnostic Server in the federation.
{% include inline_imageClient.html file="tb_config_scheduling.png" alt="Scheduling" %} | Scheduling | Spotlight collects data according to these set schedules. Select any template or monitored connection in the federation to configure.
{% include inline_imageClient.html file="tb_config_plannedoutage.png" alt="Planned Outage" %} | Planned Outage | Enter the scheduled maintenance times for the connections Spotlight monitors so Spotlight does not raise alarms and attempt to collect data during the outage period. Planned outages are listed for all monitored connections in the federation.
{% include inline_imageClient.html file="tb_config_sqlserverresponse.png" alt="SQL Server Response Time" %} | SQL Server Response Time | Set the SQL statement that is used to measure SQL Server response time. Select any template or monitored connection in the federation to configure.
{% include inline_imageClient.html file="tb_config_customcounters.png" alt="Custom Counters" %} | Custom Counters | Create and configure Custom Counters for monitoring connections to SQL Servers and Windows servers. Select any template or monitored connection in the federation to configure.
{% include inline_imageClient.html file="tb_config_errorlogentries.png" alt="Error Log Entries" %} | Error Log Entries | Request Spotlight raise an alarm when a specified entry is logged in the SQL Server error log. Select any template or monitored connection in the federation to configure.
{% include inline_imageClient.html file="tb_config_monitoredfiles.png" alt="Monitored Files" %} | Monitored Files | Track the growth of specified files (usually log files) on monitored Windows Servers. Select any template or monitored Windows connection in the federation to configure.


## Configuration templates
Spotlight Clients in the federation have access to all configuration templates in the federation.

The configuration templates from newly joined Spotlight Diagnostic Server will be accessible to all Spotlight Clients in the federation. Any two templates with the same name will both be renamed to remain separate.

## Add connections to the federation
You will be prompted to select the Spotlight Diagnostic Server when you add a connection to a federated system. The new connection will be monitored through the selected Spotlight Diagnostic Server.

{% include note.html content="A single Spotlight Diagnostic Server is designed to monitor a maximum of 100 SQL Servers, Analysis Services or Replication instances and 100 Windows servers." %}

### SQL Server connections
A SQL Server instance should be monitored on the same Spotlight Diagnostic Server as its SQL Server host.

{% include imageClient.html file="figure_federation_Add-connections-to-Federation-Windows.png" alt="SQL Server connections" %}

### Virtual environments
Where Windows hosts are in a virtual environment the Windows host should be monitored by the same Spotlight Diagnostic Server as the associated Hyper-V / VMware server.

{% include imageClient.html file="figure_federation_Add-connections-to-Federation-Virtual.png" alt="Virtual environments" %}

{% include links.html %}
