---
title: How is a performance health rating calculated?
last_updated: July 29, 2016
summary: ""
sidebar: c_sqlserver_sidebar
permalink: sqlserver_component_performancehealth.html
id: Home.SQLServer.HealthRating
folder: ConnectSQLServer
---


A database with healthy performance spends its time productively - on CPU and I/O.

A database with unhealthy performance often spends too much time waiting for bottlenecks such as locks and latches.

By analyzing the waits of a SQL Server instance Spotlight can determine the relative proportion of time the instance spends on CPU, I/O, locks and latches. As long as a database instance devotes enough time to CPU and I/O, it will be considered healthy.

Additionally, the single-block-read latency of the database instance is taken into consideration. This needs to be low/fast enough to indicate that the time being spent on I/O is productive.

However, if the time spent on waits is significantly lower than the available CPU time on the Windows host, there is not enough load being placed on the database instance to assess its health.

In summary: if a database instance devotes most of its time to CPU and I/O and has a low single-block read latency, it will obtain a performance-health rating of 80% or more, which is considered healthy.

{% include links.html %}
