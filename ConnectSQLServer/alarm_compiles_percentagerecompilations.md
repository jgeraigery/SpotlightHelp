---
title: ﻿Clusters - Failed Over Alarm
keywords: mydoc
summary: "The Clusters - Failed Over alarm is raised when a cluster fails over."
sidebar: c_sqlserver_sidebar
toc: false
permalink: /sqlserver_alarm_clusters_failedover/
---


﻿<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:ignoredWords="AutoShrink;SHRINKDATABASE;DBName;node(s;disk(s;Freespace;LazyWriter;KB;files(s;file(s;Ctrl;database(s;index(es;AutoGrow;MaxSize;table(s;getpage;timeout;Min;SQLServerAgent;MSDTC;MSSQLServerOLAPService;MyComputer;VLF;Timeouts;timeouts;sqlservr;tempdb;SPID;dbcc;SMP;login;Autogrow;AutoGrow=Yes;MaxSize=Unlimited;Errorlog;MSCS;diskperf;SPIDs;Config;Adhoc-SQL;CTRL;SystemDB;offline;spid;Runnable;Optimizer;VLFs;Inc;runnable;IO;Mem;Login;TranCount;NetBIOS;perfmon;firewalls;JEDI;Mozilla;C.F.R.;MPL;www.mozilla.org;C;SNMP;concurrency;asynchronously;datatype;indid;Indid;sa;Sa;SYSADMIN;MAPI;Disk(s;dbname;Offline;MSSQLServer;parameterizing;Adhoc;LogWriter;IntentShared;IntentExclusive;adhoc;RowModCtr;sp_prepare;sp_cursorprepare;auto-parameterized;user-parameterized;Misc;ErrorLog;freeware;group(s;ungroup;sysadmin;QuestWorkDatabase;DTC;system(s;middleware;homepage;Datacenter;XP;rowset;autoclose;tran;logins;wildcards;AutoGrow=No;Tran;AutoGrowth;DDL;DML;sp_recompile" MadCap:timeEstimate="0" MadCap:priority="0" MadCap:status="In Progress" MadCap:lastBlockDepth="4" MadCap:lastHeight="886" MadCap:lastWidth="850">
    <head><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="Compiles - Percentage Recompilations Alarm;alarms:Compiles - Percentage Recompilations" />Compiles - Percentage Recompilations Alarm</h1>
        <p>The <b>Compiles - Percentage Recompilations            </b>alarm
 becomes active when the average ratio between the number of recompiles and the
 total number of compiles exceeds a threshold.&#160;This value is taken over a specific number of background collections.</p>
        <p>This highlights when
 more than a certain percentage of compilations are due to run-time recompiles.</p>
        <p>A <b>Compile</b> is the
 process SQL Server goes through to determine how a query or stored procedure
 will be executed. During a compile, SQL Server looks at the query, including
 the tables, clause conditions, joins, sub queries, sort and grouping requirements
 used. It then takes into account all the existing indexes, locking methods
 and join algorithms that could help the query run faster. It comes up
 with what it considers to be the fastest way of executing the query. This
 is known as an <b>execution plan</b>.</p>
        <p>A compile can take a relatively large amount of time and
 CPU resources, especially when the query or stored procedure is large
 or complex. Because of this, SQL Server stores execution plans in the
 Procedure Cache in the hope that they can be reused later, thereby saving
 the CPU that would otherwise be required to re-compile the query or stored
 procedure.</p>
        <p>A <b>Recompile</b> occurs
 when SQL Server believes that the execution plan for a stored procedure
 that is currently executing may no longer be the best possible plan. SQL
 Server pauses the query execution and compiles the stored procedure again.
 This not only slows down the process that is executing the procedure,
 but adds extra CPU load on the server.</p>
        <p>Many recompiles can add an excessive <b>CPU
 load</b> on SQL Server and slow down everything running on that machine.
 In general, the fewer recompiles the better.</p>
        <p>There are many conditions that can cause SQL Server to recompile
 a stored procedure. The most common are:</p>
        <ul>
            <li>Schema
 changes to any of the referenced objects, including adding or dropping
 constraints, defaults, or rules.</li>
            <li>A sufficient percentage
 of data changes in a table that is referenced by the stored procedure.</li>
            <li>Stored procedures
 with a mix of Data Definition Language (<b>DDL</b>)
 and Data Manipulation Language (<b>DML</b>)
 operations.</li>
            <li>Stored procedures
 performing certain operations on temporary tables.</li>
            <li>The use of the <b>WITH RECOMPILE </b>clause in the <b>CREATE
 PROCEDURE</b> or <b>EXECUTE</b> statement.</li>
            <li>Running <b>sp_recompile
 </b>against any table referenced in the stored procedure.</li>
            <li>Restoring the database
 containing the procedure or any of the objects the procedure references
 (if you are performing cross-database operations).</li>
            <li>High server activity
 causing the plan to be aged out of cache.</li>
        </ul>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <ul>
            <li>Use the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_sqlactivity.htm"><span style="color: #0078b6;" class="mcFormatColor">SQL Server | SQL Activity Drilldown</span></MadCap:xref> | <b>Summary</b> page | <b>Call Rates</b> chart to determine if this is a persistent problem. If
the <b>Re-Compiles</b> rate has been
a large percentage of the total <b>Compiles</b>
 rate for some time, then you should investigate further. </li>
        </ul>
        <p>It is a good idea to review the code of each of the stored
 procedures. You should look at changing the stored procedures to remove
 coding practices that can cause recompiles. Things you might consider
 include:&#160;</p>
        <ul>
            <li>Minimizing
 the use of temporary tables to store intermediate results. </li>
            <li>Keeping all <b>DDL</b> statements for temporary tables
 together in the procedure.</li>
            <li>Avoiding referencing
 temporary tables in <b>Cursors</b>. </li>
            <li>Not creating temporary
 tables in one procedure and using them in another. </li>
            <li>Not creating temporary
 tables in flow control blocks (<b>IF</b>,
 <b>ELSE</b>, <b>WHILE</b>
 etc). </li>
            <li>Ensuring all <b>CREATE TABLE</b> statements for temporary
 tables syntactically precede any other references to those tables, and
 that all references to temporary tables syntactically precede the corresponding
 <b>DROP TABLE</b> statements. </li>
            <li>Using the <b>KEEP
 PLAN</b> option on references to temporary tables that have small amounts
 of data modified many times. </li>
        </ul>
    </body>
</html>
