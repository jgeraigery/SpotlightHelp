---
title: User - Response Time alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "The User - Response Time alarm is raised when the time taken for Spotlight to send a simple query to the monitored SQL Server instance, have it processed and get the answer back is more than 20 seconds (or the configured threshold). The Response Time alarm does not tell you where the time is spent; it could be the network or it could be the SQL Server instance is unresponsive."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_user_responsetime.html
id: responsetime
folder: ConnectSQLServer
---


This is not an error. Spotlight is just saying that it is taking over 20 seconds (or the configured threshold) to execute the response time query in your environment. This could be indicative of:

* Response time SQL blocking (Check the configured Response Time SQL)
* A network issue between the Spotlight Diagnostic Server and the monitored SQL server(s)
* A problem with the monitored SQL Server(s)

You may want to find out what the Response Time SQL is (default "select 1") and execute that SQL from SQL Server Management Studio from the Spotlight Diagnostic Server host against one of the monitored SQL Servers exhibiting the issue.

In the Spotlight Client, members of the Spotlight diagnostic administrators group can change the SQL Statement used to measure SQL Server response time. 

{% include links.html %}
