---
title: ﻿SQL Server Fatal Table Integrity Suspect Error (severity level 22) alarm
tags: [sqlserver_alarms]
summary: "The SQL Server Fatal Table Integrity Suspect Error (severity level 22) alarm becomes active when Spotlight Enterprise detects a new fatal error message that contains the log entry 'Severity: 22' in the SQL Sever error log. It might indicate that the table or index specified in the message has been damaged by a software or hardware problem."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_errorlog_fataltableintegritysuspect.html
folder: ConnectSQLServer
---

When this alarm is raised restart the SQL Server. If the problem is in the cache and not on the disk, the restart will solve the problem. Otherwise, run 'DBCC CHECKDB' to determine the extent of the damage.

{% include note.html content="Use the Spotlight Client **Configure \| Error Log Entries** to define and edit the alert rules that Spotlight scans the SQL Server Error Log for. Spotlight scans the error logs at the configured frequency. If you make changes to the alert rules it may take some time for changes to take effect." %}


{% include links.html %}
