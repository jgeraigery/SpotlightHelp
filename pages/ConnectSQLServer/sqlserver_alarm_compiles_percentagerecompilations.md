---
title: ﻿Compiles - Percentage Recompilations Alarm
last_updated: July 29, 2016
summary: "The Compiles - Percentage Recompilations alarm becomes active when the average ratio between the number of recompiles and the total number of compiles exceeds a threshold. This value is taken over a specific number of background collections."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_compiles_percentagerecompilations.html
id: flwCompilesRecompile percentage.Alarm
folder: ConnectSQLServer
---




This highlights when more than a certain percentage of compilations are due to run-time recompiles.

A Compile is the process SQL Server goes through to determine how a query or stored procedure will be executed. During a compile, SQL Server looks at the query, including the tables, clause conditions, joins, sub queries, sort and grouping requirements used. It then takes into account all the existing indexes, locking methods and join algorithms that could help the query run faster. It comes up with what it considers to be the fastest way of executing the query. This is known as an execution plan.

A compile can take a relatively large amount of time and CPU resources, especially when the query or stored procedure is large or complex. Because of this, SQL Server stores execution plans in the Procedure Cache in the hope that they can be reused later, thereby saving the CPU that would otherwise be required to re-compile the query or stored procedure.

A Recompile occurs when SQL Server believes that the execution plan for a stored procedure that is currently executing may no longer be the best possible plan. SQL Server pauses the query execution and compiles the stored procedure again. This not only slows down the process that is executing the procedure, but adds extra CPU load on the server.

Many recompiles can add an excessive CPU load on SQL Server and slow down everything running on that machine. In general, the fewer recompiles the better.

There are many conditions that can cause SQL Server to recompile a stored procedure. The most common are:

* Schema changes to any of the referenced objects, including adding or dropping constraints, defaults, or rules.
* A sufficient percentage of data changes in a table that is referenced by the stored procedure.
* Stored procedures with a mix of Data Definition Language (DDL) and Data Manipulation Language (DML) operations.
* Stored procedures performing certain operations on temporary tables.
* The use of the WITH RECOMPILE clause in the CREATE PROCEDURE or EXECUTE statement.
* Running sp_recompile against any table referenced in the stored procedure.
* Restoring the database containing the procedure or any of the objects the procedure references (if you are * performing cross-database operations).
* High server activity causing the plan to be aged out of cache.


## When the alarm is raised

Use the SQL Server \| SQL Activity Drilldown \| Summary page \| Call Rates chart to determine if this is a persistent problem. If the Re-Compiles rate has been a large percentage of the total Compiles rate for some time, then you should investigate further.

It is a good idea to review the code of each of the stored procedures. You should look at changing the stored procedures to remove coding practices that can cause recompiles. Things you might consider include:

* Minimizing the use of temporary tables to store intermediate results.
* Keeping all DDL statements for temporary tables together in the procedure.
* Avoiding referencing temporary tables in Cursors.
* Not creating temporary tables in one procedure and using them in another.
* Not creating temporary tables in flow control blocks (IF, ELSE, WHILE etc).
* Ensuring all CREATE TABLE statements for temporary tables syntactically precede any other references to those tables, and that all references to temporary tables syntactically precede the corresponding DROP TABLE statements.
* Using the KEEP PLAN option on references to temporary tables that have small amounts of data modified many times.

{% include links.html %}
