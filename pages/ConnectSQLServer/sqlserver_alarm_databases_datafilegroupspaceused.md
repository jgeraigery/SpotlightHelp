---
title: ﻿Databases - Data File Group Space Used alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "The Databases - Data File Group Space Used Alarm is raised when a fixed size data file in any database is in danger of filling."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_databases_datafilegroupspaceused.html
id: Home.mcDataFiles.Fixed Data File Space Used.alarm
folder: ConnectSQLServer
---


The first alarm will be raised whether the files in a file group can grow or not. It compares the maximum size the files could get to, compared to how full it is now. So if it’s a non auto grow file, then that’s just the current size of the file. I think the help could explain that better.

the bold text below implies the file can auto grow but it can't.


It is raised when a data file is almost full and the file **cannot automatically grow enough to relieve the problem**. Once a data file fills completely, depending on the state of other data files within the file group, attempts to update anything in that database may fail. This alarm takes into account the amount of free space currently within a fixed sized data file.


The alarm is raised when the free space in a data file falls below a certain percentage of the file's current total size.

This alarm can occur when a data file is filling up and the file is approaching, or has reached, its MaxSize settings and is defined with Auto Grow=No.

For example, this  alarm will be raised when the data file is 95% full and the data file has been defined such with Auto Grow=No.

## While this alarm is current

Open the SQL Server \| Databases Drilldown \| Data Files page. In the Data Files grid, check for files with **Auto Grow=No**. Files in danger of filling will have a low **Free Pct** figure.

## To resolve this problem

Adjust the file growth parameters of at least one file in the file group that the file belongs to so that it can grow. Make sure the Auto Grow setting is on, and that the MaxSize setting is larger than the current file size.

## Spotlight alarm configuration

This alarm can be configured to ignore certain values. For more information, see Do not alarm for certain values.
You can configure different alarm severities for specific data files. For more information, see Configure an alarm.


{% include links.html %}
