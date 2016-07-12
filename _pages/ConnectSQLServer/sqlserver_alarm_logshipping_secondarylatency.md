---
title: Log Shipping - Secondary Latency Alarm
summary: "The Log Shipping - Secondary Latency alarm is raised when the amount of time that elapsed between the log backup being created on the primary database and when it was restored on the secondary database exceeds a threshold."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_logshipping_secondarylatency
folder: ConnectSQLServer
---





## When the alarm is raised

It may indicate a problem in getting data from the primary database to the secondary database. Looking at the history of the copy or restore job may help identify the problem. To do this, go to the Secondaries page of the SQL Server \| High Availability Drilldown and select an item in the grid to view the history.


 TIP: The Primary ID column may be hidden by default. See Show, hide and order columns for more information on how to display hidden columns.


## Configuration

You can configure this alarm to ignore certain values. For more information, see Do not alarm for certain values.
You can configure different alarm severities for specific secondary databases. For more information, see Configure an alarm. The key for this alarm is the ID of the secondary database. You can see this information in the Transaction Log Shipping Secondaries grid on the Secondaries page of the SQL Server | High Availability Drilldown.
