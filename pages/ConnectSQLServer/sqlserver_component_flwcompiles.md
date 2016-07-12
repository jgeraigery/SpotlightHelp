---
title: ﻿Compiles
summary: "This flow shows the rate of SQL compilations and re-compilations."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_component_flwcompiles.html
folder: ConnectSQLServer
---


All SQL statements need to be **compiled** by SQL Server
 before they are executed. Compiling is the process by which SQL Server
 converts the SQL statement into an executable query plan.

 Under certain circumstances, SQL Server will **re-compile**
 SQL statements. Recompiling can consume a large amount of CPU and can degrade performance.

 Good coding practices such as using Stored Procedures and parameterizing queries can help to reduce recompiles.

 {% include links.html %}
