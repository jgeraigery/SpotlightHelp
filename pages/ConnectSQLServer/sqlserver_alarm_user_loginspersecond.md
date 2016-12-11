---
title: ﻿User - Logins Per Second alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "The User - Logins Per Second alarm is raised when the average number of logins per second exceeds a threshold. This value is taken over a specific number of background collections."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_user_loginspersecond.html
id: btnUserSQL Server Logins per second.Alarm
folder: ConnectSQLServer
---





This can be an indicator of poor application design. Creating a connection to SQL Server is relatively expensive, and coding practices where an application repeatedly connects and disconnects from SQL Server should be avoided.

While reconnecting will not necessarily slow down all users of the SQL Server instance, it will often result in poor performance for the application that is re-connecting all the time.

When the alarm is raised use Microsoft SQL Server Profiler to monitor connect and disconnect events, and determine if a badly behaving application is causing the problem.

{% include links.html %}
