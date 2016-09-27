---
title: Configure the use of Extended Events
summary: "Request the Spotlight Diagnostic Server not use (use) Extended Events to collect data from monitored SQL Server instances (SQL Server 2008 and above)"
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgds_extendedevents.html
folder: SpotlightEnterprise
---


The Spotlight Diagnostic Server (by default) uses Extended Events to collect data from monitored SQL Server instances (SQL Server 2008 and above). The data is used by:

* SQL Server \| Workload Analysis Drilldown
* SQL Server \| Wait Events Drilldown
* Deadlock checks: SQL Server \| SQL Activity Drilldown, Locks - Deadlocks Alarm.

Use this screen to request that the Spotlight Diagnostic Server not use Extended Events to collect data from monitored SQL Server instances.

{% include note.html content="This setting affects all SQL Server monitored through the Spotlight Diagnostic Server. To configure the use of Extended Events per monitored SQL Server, see SQL Server \| Connection Details." %}

## Open this screen from the Spotlight Client

1. Click **Configure \| Diagnostic server**.
2. Select **Configure the use of Extended Events**.

## Select the Diagnostic Server

For federated Spotlight Diagnostic Server you will be prompted to select the Spotlight Diagnostic Server to configure. Each Spotlight Diagnostic Server is independently configured in its use of Extended Events.

## Configure the use of Extended Events.

### Deselect the use of Extended Events

If you deselect the use of Extended Events then the Spotlight Diagnostic Server will stop collecting data for the SQL Server \| Workload Analysis Drilldown and SQL Server \| Wait Events Drilldown. This will not show up immediately on the user interface as the drilldowns will continue to show historical data till no data is available.

If you deselect the use of Extended Events then the Spotlight Diagnostic Server will use SQL Server Trace to collect data for deadlock checks.

### Select to use Extended Events

This is the default setting. If you select to use Extended Events (following a period of time when the use of Extended Events was deselected) the SQL Server \| Workload Analysis Drilldown and SQL Server \| Wait Events Drilldown may take a few minutes to repopulate with data.


{% include links.html %}
