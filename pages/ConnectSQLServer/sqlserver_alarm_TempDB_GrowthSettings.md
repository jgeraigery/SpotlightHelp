---
title: Tempdb Growth Settings alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "This alarm is raised when Tempdb files have nonidentical growth settings."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_tempdb_growthsettings.html
id: alarm_TempDB_GrowthSettings
folder: ConnectSQLServer
---




When the alarm is raised, consider configuring all Tempdb files to have the same growth settings. When all Tempdb files have the same initial size and growth settings SQL Server will manage an even distribution of data across the files.

{% include links.html %}
