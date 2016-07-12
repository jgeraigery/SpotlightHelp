---
title: ﻿Databases - Dynamic Data File Group Growths Remaining Alarm
summary: "The Databases - Dynamic Data File Group Growths Remaining alarm becomes active when a non fixed size data file in any database is in danger of running out of space to grow."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_databases_dynamicdatafilegroupgrowthsremaining.html
folder: ConnectSQLServer
---


This alarm is raised when a data file is almost full and the file cannot automatically grow enough to relieve the problem. Once a data file fills completely, depending on the state of other data files within the file group, attempts to update data in that database may fail. This alarm takes into account the amount of free space currently on the disk that the file resides on.

The alarm is raised when the number of growths remaining, given the files growth settings and the amount of free disk space available, falls below a threshold.

This alarm can occur when a data file is filling up and the file is approaching, or has reached, its MaxSize settings and is defined with Auto Grow=Yes and there are a limited number of growths that can occur before an out of disk space condition occurs.

## When the alarm is raised

View the Data Files page on the SQL Server \| Databases Drilldown. Check for files with Auto Grow=Yes; files in danger of filling will have a low Free Pct figure.

To resolve this problem, free up disk space on the disk that the file resides on.

## Configuration

You can configure this alarm to ignore certain values. For more information, see Do not alarm for certain values.
You can configure different alarm severities for specific data files. For more information, see Configure an alarm.

##Examples

This alarm is raised in the following circumstances:

* The data file is 95% full, and the data file has been defined such that Auto Grow=Yes and, given the current growth increment, the file has a limited number of growths remaining before it will consume all available disk space.

{% include links.html %}
