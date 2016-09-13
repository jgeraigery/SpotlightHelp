---
title: Collect additional diagnostic information (SQL Server)
last_updated: July 29, 2016
tags: [collect_additional_diagnostic_information]
summary: "The following alarms are configurable to collect (not collect) additional diagnostic information. When configured to collect additional information and the alarm is activated to the severity to trigger data collection then data is captured in the Playback Database."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_collections_adddiaginfo.html
folder: ConnectSQLServer
---





## Compiles - Percentage Recompilations Alarm

### Severity to trigger data collection
High

### Data Collection Default
On

### To show this drilldown: select the alarm in the alarm log and click Diagnose.
SQL Server \| SQL Activity Drilldown \| Summary page

### For additional information: select the alarm in the playback database and navigate to this drilldown.
SQL Server \| SQL Activity Drilldown \| Sessions page



## I/O Stall Time Alarm

### Severity to trigger data collection
High

### Data Collection Default
Off

### To show this drilldown: select the alarm in the alarm log and click Diagnose.
SQL Server \| Diagnostics Drilldown \| IO page



## Locks - Blocked Processes Alarm

### Severity to trigger data collection
High

### Data Collection Default
On

### To show this drilldown: select the alarm in the alarm log and click Diagnose.
SQL Server \| SQL Activity Drilldown \| Blocking page

### For additional information: select the alarm in the playback database and navigate to this drilldown.
SQL Server \| SQL Activity Drilldown \| Sessions page



## Locks - Deadlocks Alarm

### Severity to trigger data collection
High

### Data Collection Default
On

### To show this drilldown: select the alarm in the alarm log and click Diagnose.
SQL Server \| SQL Activity Drilldown \| Deadlocks page

### For additional information: select the alarm in the playback database and navigate to this drilldown.
SQL Server \| SQL Activity Drilldown \| Sessions page



## Memory - Page Life Expectancy Alarm

### Severity to trigger data collection
High & Medium

### Data Collection Default
On

### For additional information: select the alarm in the playback database and navigate to this drilldown.
SQL Server \| SQL Activity Drilldown \| Sessions page



## SQL - Long Running SQL alarm

### Severity to trigger data collection
High & Medium & Low

### Data Collection Default
On

### To show this drilldown: select the alarm in the alarm log and click Diagnose.
SQL Server \| SQL Activity Drilldown \| Sessions page

### For additional information: select the alarm in the playback database and navigate to this drilldown.
SQL Server \| SQL Activity Drilldown \| Sessions \| Session Details



## SQL Agent - Alerts Alarm

### Severity to trigger data collection
High & Medium

### Data Collection Default
On

### To show this drilldown: select the alarm in the alarm log and click Diagnose.
SQL Server \| Support Services Drilldown \| SQL Agent Alerts page


{% include links.html %}
