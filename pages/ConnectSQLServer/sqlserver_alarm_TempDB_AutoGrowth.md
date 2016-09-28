---
title: Tempdb Auto Growth Alarm
last_updated: July 29, 2016
summary: "This alarm is raised when Tempdb is configured to auto grow and a significant number of growth events are detected."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_tempdb_autogrowth.html
id: alarm_TempDB_AutoGrowth
folder: ConnectSQLServer
---



When the alarm is raised, consider configuring Tempdb to pre allocated file sizes as per best practice.

{% include note.html content="Spotlight uses XEvents to determine the extent to which Tempdb is auto growing." %}

 {% include links.html %}
