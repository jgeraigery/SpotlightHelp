---
title: Tempdb Number of Files alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "This alarm is raised when the number of files in the Tempdb database is less than the number of processors and the SQL Server is experiencing contention on Tempdb."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_tempdb_numberoffiles.html
id: alarm_TempDB_NumberOfFiles
folder: ConnectSQLServer
---




## When the alarm is raised

To ease contention consider increasing the number of Tempdb files to one Tempdb file per processor. Thus increasing the number of Tempdb files increases the number of physical I/O operations that SQL Server can push to the disk at any one time. The more I/O that SQL Server can push down to the disk level, the faster the database will run.

It is important to configure the files at the same initial size and with the same growth settings. That way, SQL Server will manage an even distribution of data across the files.

{% include note.html content="This alarm is applicable to SQL Server 2005 and above." %}

 {% include links.html %}
