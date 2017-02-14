---
title: ﻿Tempdb Version Store Generation Rate Alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "This alarm is raised when the Tempdb Version Store growth rate is high compared to the cleanup rate."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_tempdb_versionstoregenerationrate.html
id: alarm_TempDB_VersionStoreGenerationRate
folder: ConnectSQLServer
---





There are two version stores in Tempdb. The online index build version store is used for online index builds in all databases. The common version store is used for all other data modification operations in all databases.

When the alarm is raised, investigate the **SQL Server \| Tempdb drilldown \| Usage page \| Tempdb Version Store Generation Rate chart**.

{% include links.html %}
