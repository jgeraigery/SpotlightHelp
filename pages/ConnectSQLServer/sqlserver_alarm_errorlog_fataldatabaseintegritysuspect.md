---
title: ﻿SQL Server Fatal Database Integrity Suspect Error (severity level 23) alarm
tags: [sqlserver_alarms]
summary: "The SQL Server Fatal Database Integrity Suspect Error (severity level 23) alarm becomes active when Spotlight Enterprise detects a new fatal error message that contains the log entry 'Severity: 23' in the SQL Sever error log. It indicates that the integrity of the entire database is in question because of a hardware or software problem."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_errorlog_fataldatabaseintegritysuspect.html
folder: ConnectSQLServer
---

When this alarm is raised run 'DBCC CHECKDB' to find the full extent of the damage to the database.

{% include note.html content="Use the Spotlight Client **Configure \| Error Log Entries** to define and edit the alert rules that Spotlight scans the SQL Server Error Log for. Spotlight scans the error logs at the configured frequency. If you make changes to the alert rules it may take some time for changes to take effect." %}


{% include links.html %}
