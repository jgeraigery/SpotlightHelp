---
title: Configure the use of Extended Events
summary: "The Spotlight Diagnostic Server (by default) uses Extended Events to collect data from monitored SQL Server instances (SQL Server 2008 and above)."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfg_ds_extendedevents.html
folder: SpotlightEnterprise
---


The data is used by:

* SQL Server \| Workload Analysis Drilldown
* SQL Server \| Wait Events Drilldown
* Deadlock checks: SQL Server \| SQL Activity Drilldown, Locks - Deadlocks Alarm.

## Open this screen from the Spotlight Client

1. Click **Configure \| Diagnostic server**.
2. Select **Configure the use of Extended Events**.

## Select the Diagnostic Server

For federated Spotlight Diagnostic Server (Federate Diagnostic Servers) you will be prompted to select the Spotlight Diagnostic Server to configure. Each Spotlight Diagnostic Server is independently configured in its use of Extended Events.

## Select - Configure the use of Extended Events.

Select as appropriate.

### Deselect

If you deselect the use of Extended Events then the Spotlight Diagnostic Server will stop collecting data for the SQL Server \| Workload Analysis Drilldown and SQL Server \| Wait Events Drilldown. This will not show up immediately on the user interface as the drilldowns will continue to show historical data till no data is available.

If you deselect the use of Extended Events then the Spotlight Diagnostic Server will use SQL Server Trace to collect data for deadlock checks.

### Select

This is the default setting. If you select to use Extended Events (following a period of time when the use of Extended Events was deselected) the SQL Server \| Workload Analysis Drilldown and SQL Server \| Wait Events Drilldown may take a few minutes to repopulate with data.



Note: This setting affects all SQL Server monitored through the Spotlight Diagnostic Server. To set per monitored SQL Server see SQL Server \| Connection Details.




{% include links.html %}
