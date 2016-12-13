---
title: Log Shipping - Secondary Latency alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "The Log Shipping - Secondary Latency alarm is raised when the amount of time that elapsed between the log backup being created on the primary database and when it was restored on the secondary database exceeds a threshold."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_logshipping_secondarylatency.html
id: btnDatabasesLogShippingSecondaryLatency.Alarm
folder: ConnectSQLServer
---


When the alarm is raised it may indicate a problem in getting data from the primary database to the secondary database. Looking at the history of the copy or restore job may help identify the problem. To do this, go to the **SQL Server \| High Availability drilldown \| Secondaries page** and select an item in the grid to view the history.


{% include note.html content="The **Primary ID** column may be hidden by default." %}


You can configure this alarm to ignore certain values. From the Spoltight Client see **Configure \| Alarms**.

You can configure different alarm severities for specific secondary databases. From the Spoltight Client see **Configure \| Alarms**. The key for this alarm is the ID of the secondary database. You can see this information on the **SQL Server \| High Availability drilldown \| Secondaries page \| Transaction Log Shipping Secondaries grid**.

{% include links.html %}
