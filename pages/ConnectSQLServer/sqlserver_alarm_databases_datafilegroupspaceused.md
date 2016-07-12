---
title: ﻿Databases - Data File Group Space Used Alarm
summary: "The Clusters - Failed Over alarm is raised when a cluster fails over."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_databases_datafilegroupspaceused.html
folder: ConnectSQLServer
---


The Databases - Data File Group Space Used Alarm is raised when a fixed size data file in any database is in danger of filling. It is raised when a data file is almost full and the file cannot automatically grow enough to relieve the problem. Once a data file fills completely, depending on the state of other data files within the file group, attempts to update anything in that database may fail. This alarm takes into account the amount of free space currently within a fixed sized data file.

The alarm is raised when the free space in a data file falls below a certain percentage of the file's current total size.

This alarm can occur when a data file is filling up and the file is approaching, or has reached, its MaxSize settings and is defined with Auto Grow=No.

## When the alarm is raised

View the Data Files page on the SQL Server \| Databases Drilldown. In the Data Files grid, check for files with Auto Grow=No; files in danger of filling will have a low Free Pct figure.

## To resolve this problem:

Adjust the file growth parameters of at least one file in the file group that the file belongs to so that it can grow. Make sure the Auto Grow setting is on, and that the MaxSize setting is larger than the current file size.

## Configuration

You can configure this alarm to ignore certain values. For more information, see Do not alarm for certain values.
You can configure different alarm severities for specific data files. For more information, see Configure an alarm.

## Examples

This alarm will be raised in the following circumstances:

* The data file is 95% full, and the data file has been defined such with Auto Grow=No.

{% include links.html %}
