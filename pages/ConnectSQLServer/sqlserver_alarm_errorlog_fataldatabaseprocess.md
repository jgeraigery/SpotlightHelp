---
title: ﻿SQL Server Fatal Database (dbid) Processes Error (severity level 21) alarm
tags: [sqlserver_alarms]
summary: "The SQL Server Fatal Database (dbid) Processes Error (severity level 21) alarm becomes active when Spotlight Enterprise detects a new fatal error message that contains the log entry 'Severity: 21' in the SQL Sever error log. It indicates that a problem has been encountered that affects all tasks in the current database, but it is unlikely that the database itself has been damaged."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_errorlog_fataldatabaseprocess.html
folder: ConnectSQLServer
---

When this alarm is raised run 'DBCC CHECKDB' to determine the extent of the corruption.

{% include note.html content="Use the Spotlight Client **Configure \| Error Log Entries** to define and edit the alert rules that Spotlight scans the SQL Server Error Log for. Spotlight scans the error logs at the configured frequency. If you make changes to the alert rules it may take some time for changes to take effect." %}


{% include links.html %}
