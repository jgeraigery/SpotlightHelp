---
title: Connected Sessions Chart
last_updated: July 29, 2016
summary: "The Connected Sessions chart shows SQL Server session information."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_chart_connectedsessions.html
id: SQLActivity_Summary.ConnectedSessionsChart
folder: ConnectSQLServer
---


The Connected Sessions chart contains an area graph showing the number of SQL Server sessions over time. If you have a non-zero **User Connections** parameter set on the server being monitored, the Y-axis is scaled to the value you specified, which allows you to see how close you are to this limit. Sessions are categorized as:

* Internal SQL Server **System** sessions
* **Active** user sessions
* **Idle** user sessions


A **Session** is a single connection to SQL Server. Some applications establish multiple sessions to SQL Server. If there are multiple applications running on a target computer that are all communicating with SQL Server, they will also have created multiple SQL Server sessions.


{% include links.html %}
