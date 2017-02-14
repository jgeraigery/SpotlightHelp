---
title: ﻿Databases - Dynamic Data File Group Growths Remaining alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "The Databases - Dynamic Data File Group Growths Remaining alarm is raised when the disk space is insufficient for files to keep growing into or the maximum file size (if it is set) is being approached."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_databases_dynamicdatafilegroupgrowthsremaining.html
id: Home.mcDataFiles.Dynamic Data File Growths Remaining.alarm
folder: ConnectSQLServer
---


Spotlight calculates the number of times the file group could grow before hitting the defined limits.

This alarm is ignored if **Auto Grow=No** for all files in the file group. The growths remaining is set to null.

## While this alarm is current
Open the SQL Server \| Databases Drilldown \| Data Files page. In the Data Files grid, check for files with **Auto Grow=Yes**. Files in danger of filling will have a low **Free Pct** figure.

## To resolve this problem
Free up disk space on the disk that the file resides on.

## Spotlight alarm configuration
In Spotlight Enterprise from the Spotlight Client you can configure this alarm to ignore certain values.


{% include links.html %}
