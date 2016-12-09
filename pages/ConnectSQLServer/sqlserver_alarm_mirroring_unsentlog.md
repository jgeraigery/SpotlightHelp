---
title: Mirroring - Unsent Log alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "The Mirroring - Unsent Log alarm is raised when the size of an unsent mirroring log exceeds a threshold."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_mirroring_unsentlog.html
id: btnDatabasesMirroringUnsentLog.Alarm
folder: ConnectSQLServer
---





This alarm may indicate a problem with the link between the principal and mirror databases.

## Configuration

Mirroring alarms are disabled by default. It is important to configure alarm thresholds that are appropriate to your environment before enabling these alarms. For more information, see Configure \| Alarms.

You can configure this alarm to ignore certain values. For more information, see Do not alarm for certain values.
You can configure different alarm severities for specific principal databases. For more information, see Configure an alarm. The key for this alarm is the name of the principal database.

{% include links.html %}
