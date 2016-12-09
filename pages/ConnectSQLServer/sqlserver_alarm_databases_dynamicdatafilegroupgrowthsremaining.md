---
title: ﻿Databases - Dynamic Data File Group Growths Remaining alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "The Databases - Dynamic Data File Group Growths Remaining alarm is raised when a non fixed size data file in any database is in danger of running out of space to grow."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_databases_dynamicdatafilegroupgrowthsremaining.html
id: Home.mcDataFiles.Dynamic Data File Growths Remaining.alarm
folder: ConnectSQLServer
---

And the help on Databases - Dynamic Data File Group Growths Remaining looks wrong too; the bold test below implies the file has a MaxSize setting which it does not.

The second alarm simply calculates how many more times the file group could grow, before hitting the defined limits. If there are no autogrow files in the file group the growths remaining is set to null and therefore the alarm is ignored. Really it’s telling you that either you are running out of disk space for the files to keep growing into, or you are approaching the maximum file size (if it is set).


This alarm is raised when a data file is almost full and the file cannot automatically grow enough to relieve the problem. Once a data file fills completely, depending on the state of other data files within the file group, attempts to update data in that database may fail. This alarm takes into account the amount of free space currently on the disk that the file resides on.

The alarm is raised when the number of growths remaining, given the files growth settings and the amount of free disk space available, falls below a threshold.

This alarm can occur when a data file is filling up and the file is approaching, or has reached, **its MaxSize settings** and is defined with **Auto Grow=Yes** and there are a limited number of growths that can occur before an out of disk space condition occurs.

For example, this alarm is raised when the data file is 95% full, and the data file has been defined such that Auto Grow=Yes and, given the current growth increment, the file has a limited number of growths remaining before it will consume all available disk space.

## While this alarm is current

Open the SQL Server \| Databases Drilldown \| Data Files page. In the Data Files grid, check for files with **Auto Grow=Yes**. Files in danger of filling will have a low **Free Pct** figure.

## To resolve this problem

Free up disk space on the disk that the file resides on.

## Spotlight alarm configuration

This alarm can be configured to ignore certain values. For more information, see Do not alarm for certain values.


{% include links.html %}
