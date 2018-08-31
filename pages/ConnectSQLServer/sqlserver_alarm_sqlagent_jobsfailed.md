---
title: SQL Agent - Jobs Failed alarm
tags: [sqlserver_alarms]
summary: "The SQL Agent - Jobs Failed alarm is raised when Spotlight Enterprise detects that at least one SQL Agent job has failed in the last few minutes."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_sqlagent_jobsfailed.html
id: Home.btnServices.ServiceJobsFailed.Alarm
folder: ConnectSQLServer
---



When the alarm is raised, open the **SQL Server \| Support Services drilldown \| SQL Agent Jobs page** for information on SQL Agent jobs. You can double click any job to view the messages that it logged during its last run. This page shows the last run time and completion status of each job, as well as a graph showing which jobs ran recently, and the completion status for each run.

Spotlight collects data on failed jobs from the SQL Server instance periodically (every 5 minutes by default). This alarm will report on all failed jobs since the last data collection. You can configure data collection schedules from the Spotlight Client, **Configure \| Scheduling**.

{% include tip.html content="You can configure this alarm to ignore certain values. You can configure different alarm severities for specific agent jobs. Configure this alarm with the Spotlight Client, **Configure \| Alarms**." %}

{% include links.html %}
