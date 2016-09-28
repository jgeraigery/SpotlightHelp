---
title: ﻿Total Parse Wait Time Ratio Alarm
last_updated: July 29, 2016
summary: "The Total Parse Wait Time Ratio alarm is raised according to the proportion of time spent parsing SQL statements over the total active database time (not elapsed time). "
sidebar: c_oracle_sidebar
permalink: oracle_alarm_totalparsewaittimeratio.html
id:
folder: ConnectOracle
---



When the alarm is raised it indicates a high level of parsing on the database, which may be causing latch contention on the shared pool and library cache latches. This may be due to excessive hard parsing of SQL statements that do not use bind variables. For more information on parse ratios, parse times, and on the SQL statements and sessions that may be triggering the alarm, see the SQL & Application Workload \| Parse Activity Page.

## About parsing

A parse call is required to prepare a SQL statement for execution. Once parsed, a statement may be executed many times without the need for further parsing. If further parsing is needed, it may be either:

### Soft parsing

This occurs when a SQL statement being prepared for execution finds a match in the shared pool.

### Hard Parsing

This occurs when a SQL statement being prepared for execution is not found in the shared pool. The resulting use of CPU and other resources can be expensive.





{% include links.html %}
