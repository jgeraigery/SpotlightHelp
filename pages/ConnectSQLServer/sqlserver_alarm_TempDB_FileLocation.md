---
title: ﻿Tempdb File Location Alarm
last_updated: July 29, 2016
summary: "This alarm is raised when Tempdb files are in the same location as other database files and I/O activity is significant and more than one drive is available."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_tempdb_filelocation.html
id: alarm_TempDB_FileLocation
folder: ConnectSQLServer
---





When the alarm is raised, consider moving Tempdb to a volume that has no other databases on it so that potential problems are easier to isolate.

For example, consider isolating Tempdb data files to their own logical drive. Move the Tempdb log files with the user database log files where there should be enough free disk space for unexpected auto grow events.

{% include note.html content="This alarm is applicable to SQL Server 2005 and above." %}

{% include links.html %}
