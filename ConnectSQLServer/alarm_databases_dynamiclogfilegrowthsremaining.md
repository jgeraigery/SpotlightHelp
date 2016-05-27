---
title: ﻿Databases - Dynamic Log File Growths Remaining Alarm
summary: "The Databases - Dynamic Log File Growths Remaining alarm becomes active when a non fixed size log file in any database is in danger of running out of space to grow."
sidebar: c_sqlserver_sidebar
permalink: /sqlserver_alarm_databases_dynamiclogfilegrowthsremaining/
---


 It is raised when a log file is almost full and the file cannot automatically grow enough to relieve the problem. Once a log file fills completely, depending on the state of other log files within the database, attempts to update data in that database may fail. This alarm takes into account the amount of free space currently on the disk that the file resides on.

The alarm is raised when the number of growths remaining, given the files growth settings and the amount of free disk space available, falls below a threshold.

This alarm can occur when a log file is filling up and:

* The file is approaching, or has reached, its MaxSize settings
* Is defined with Auto Grow=Yes
* There are a limited number of growths that can occur before an out of disk space condition occurs.

## When the alarm is raised

View the Log Files page on the SQL Server \| Databases Drilldown. Check for files with Auto Grow=Yes. Files in danger of filling will have a low Free Pct figure.
To resolve this problem free up disk space on the disk that the log file resides on.

## Configuration

You can configure this alarm to ignore certain values. For more information, see Do not alarm for certain values.
You can configure different alarm severities for specific log files. For more information, see Configure an alarm.

## Examples

This alarm will be raised in the following circumstances:

* The log file is 95% full, and has been defined such that Auto Grow=Yes and given the current growth increment, the file has a limited number of growths remaining before it consumes all available disk space.
