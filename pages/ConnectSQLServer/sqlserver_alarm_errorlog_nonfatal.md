---
title: ﻿SQL Server Critical Error (severity level lower than 20) alarm
tags: [sqlserver_alarms]
summary: "The SQL Server Critical Error (severity level lower than 20) alarm becomes active when Spotlight Enterprise detects a new error message  that contains one of the following log entries: 'Severity: 17', 'Severity: 18', 'Severity: 19' in the SQL Sever error log."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_errorlog_nonfatal.html
folder: ConnectSQLServer
---

When this alarm is raised view the SQL Server error log around the alarm time. (**SQL Server \| Error Log drilldown**)

{% include note.html content="Use the Spotlight Client **Configure \| Error Log Entries** to define and edit the alert rules that Spotlight scans the SQL Server Error Log for. Spotlight scans the error logs at the configured frequency. If you make changes to the alert rules it may take some time for changes to take effect." %}

{% include links.html %}
