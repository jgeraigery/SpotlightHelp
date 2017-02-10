---
title: ﻿Databases - Data File Group Space Used alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "The Databases - Data File Group Space Used Alarm is raised when a disk group (or the actual disk) is in danger of filling."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_databases_datafilegroupspaceused.html
id: Home.mcDataFiles.Fixed Data File Space Used.alarm
folder: ConnectSQLServer
---


This alarm is raised when a disk group (or the actual disk) is in danger of filling. Once the disk group fills completely, attempts to update anything in that database may fail.

This calculation is based on the sum of the current size of all the files in the disk group compared with the sum of the file size limits for all the files in the disk group.


## While this alarm is current

Open the SQL Server \| Databases Drilldown \| Data Files page. In the Data Files grid, check for files with **Auto Grow=No**. Files in danger of filling will have a low **Free Pct** figure.

## To resolve this problem

Adjust the file growth parameters of at least one file in the file group so that files can grow. Make sure the Auto Grow setting is on, and that the MaxSize setting is larger than the current file size.

## Spotlight alarm configuration

This alarm can be configured to ignore certain values (file groups within the database).


{% include links.html %}
