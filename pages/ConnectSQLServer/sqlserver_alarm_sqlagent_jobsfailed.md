---
title: SQL Agent - Jobs Failed alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "The SQL Agent - Jobs Failed alarm is raised when Spotlight Enterprise detects that at least one SQL Agent job has failed in the last few minutes."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_sqlagent_jobsfailed.html
id: Home.btnServices.ServiceJobsFailed.Alarm
folder: ConnectSQLServer
---





When the alarm is raised, open the **SQL Server \| Support Services drilldown \| SQL Agent Jobs page**. Determine which jobs have failed recently. You can double click any job to view the messages that it logged during its last run. This page shows the last run time and completion status of each job, as well as a graph showing which jobs ran recently, and the completion status for each run.

{% include tip.html content="You can configure this alarm to ignore certain values. You can configure different alarm severities for specific agent jobs. Configure this alarm with the Spotlight Client, **Configure \| Alarms**." %}



All failed jobs for the SQLAgentJobsFailed procedure are collected. Multiple alarms are raised within one collection (5 minutes) when there is a job failed every one minute.
In addition, the new script also resolves DS-1132 as we added the StepName column that the new script retrieves. (for SOSSe this column refers to null)

Another modification is to create a new column named "ID" which is built out of JobId-LastRunTime columns in order to make a unique identifier for each row and support alarming for multiple jobs failed within one execution.

Execute SQLAgentJobList and SQLAgentJobsFailed for sqlserver version 2005+ and see that data is retrieved.
Make sure alarms are raised for SQLAgentJobsFailed.


Document that we notify again about all failures of a job (top failures actually) during past 5 minutes





{% include links.html %}
