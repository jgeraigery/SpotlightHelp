---
title: SQL Agent - Long Running Jobs (Time) alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "The SQL Agent - Long Running Jobs (Time) alarm is raised when a SQL Agent job has been running for a long time."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_sqlagent_longrunningjobs_time.html
id: longrunningjobstime.alarm
folder: ConnectSQLServer
---


The default threshold for this alarm is 600 seconds.

When this alarm is raised, open the **Support Services drilldown \| SQL Agent Jobs page** to investigate the long running SQL Agent Job.

{% include tip.html content="You can customize the threshold to a value more suitable for your environment. You can customize a severity table for a SQL Agent job. Use a Spotlight Client to **Configure \| Alarms**." %}


{% include links.html %}
