---
title: ﻿Databases - Data File Group About to Grow
tags: [sqlserver_alarms]
last_updated: October 16, 2017
summary: "The Databases - Data File Group About to Grow alarm is raised when a file in the disk group is about to grow. You can use this information to ensure the time the file resizes is suitable; for example at a time of off-peak activity."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_databases_datafilegroupabouttogrow.html
id:
folder: ConnectSQLServer
---


The **Databases - Dynamic Data File Group Growths Remaining** and **Databases - Data File Group Space Used** alarms are raised when the space allocated to a disk group is about to run out.

This **Databases - Data File Group About to Grow** alarm is raised before a file is about to grow so you can ensure the time the file resizes is suitable; for example at a time of off-peak activity. It is based on a ratio between FixedDataUsed and TotalDB calculated on the FileGroup procedure.

{% include note.html content="This alarm is disabled by default. Use the Spotlight Client to **Configure \| Alarms** to enable the alarm." %}


{% include links.html %}
