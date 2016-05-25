---
title: ﻿Clusters - Failed Over Alarm
keywords: mydoc
summary: "The Clusters - Failed Over alarm is raised when a cluster fails over."
sidebar: c_sqlserver_sidebar
toc: false
permalink: /sqlserver_alarm_clusters_failedover/
---


﻿<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:lastBlockDepth="6" MadCap:lastHeight="706" MadCap:lastWidth="803">
    <head><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="databases:Fixed Log File Used alarm;alarms:Databases - Fixed Log File Used" />Databases - Log File Space Used Alarm</h1>
        <p>The <b>Databases - Log File Space Used Alarm</b> becomes active when a log in any database is in danger
 of filling. It is raised when a log is almost full and the log files cannot
 automatically grow enough to relieve the problem. When the free space
 in a database's log file falls below a certain percentage of the log file's
 current total log size, the alarm is raised. Once a log fills completely,
 all attempts to update anything in that database will fail. This alarm
 takes into account the amount of free space currently within a fixed sized
 log file. </p>
        <p>This alarm can occur when a log is filling up and all files
 in the log are approaching, or have reached, their MaxSize settings, or
 are defined with Auto Grow=No. </p>
        <p>When this alarm is current, you should first look at reducing
 the log requirements by:</p>
        <ul>
            <li>On the
 <MadCap:xref href="../Drilldowns/drilldown_sqlserver_databases.htm" target="" title="" alt="">Databases Drilldown</MadCap:xref>, check the
 Transactions information in the <b>Databases</b>
 grid to see if there is a very long running transaction for the database
 in question. To do this, from the <b>View</b>
 list select <b>Transactions</b> and then
 look at the <b>Oldest Tran Start Time</b>
 column.</li>
            <li>Backing up (or truncating)
 the log for the database in question. This removes any log entries that
 have been committed. </li>
        </ul>
        <p>If you cannot identify or resolve the cause of the problem
 using the above tips, consider increasing the amount of space allocated
 to the logs by:</p>
        <ul>
            <li>Viewing
 the <b>Transactions Logs </b>grid on
 the <b>Transaction Logs</b> page on the
 <MadCap:xref href="../Drilldowns/drilldown_sqlserver_databases.htm" target="" title="" alt="">Databases Drilldown</MadCap:xref>. The logs
 in danger are those that have a low <b>Free
 Pct</b> figure. Click the column heading to sort by this field. You
 can also identify the logs in danger by using the <b>Transaction
 Log Growth</b> chart, and looking for logs showing a high used percentage
 figure in the <b>Transaction Logs</b>
 grid. </li>
            <li>Viewing the <b>Log Files </b>page on the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_databases.htm" target="" title="" alt="">Databases Drilldown</MadCap:xref>.
 This displays the files that were identified as being in danger. Check
 for files with <b>Auto Grow=No</b> or
 those that have their current size nearing their <b>MaxSize</b>.
 If necessary, adjust the file growth parameters.</li>
        </ul>
        <p>To increase the amount of space a log can use:</p>
        <ul>
            <li>Adjust
 the file growth parameters of at least one log file in this database so
 that it can grow. Make sure the <b>Auto Grow</b>
 setting is on, and that the <b>MaxSize</b>
 setting is larger than the current file size.</li>
        </ul>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Configure.flsnp">
        </MadCap:snippetBlock>
        <ul>
            <li class="Note">You can configure  this alarm to ignore certain values. <MadCap:xref href="../AlarmsDialog/configure_alarm_ignorevalues.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Do not alarm for certain values</span>.</MadCap:xref></li>
        </ul>
        <ul>
            <li class="Note">You can configure different alarm severities for specific  log files. <MadCap:snippetText src="../Resources/Snippets/SoSSE/Alarm_SeeKeyedAlarmsref.flsnp" /></li>
        </ul>
        <h2>Examples</h2>
        <p>This alarm is raised in the following circumstances:</p>
        <ul>
            <li>The log
 is 95% full, and all log files have either defined Auto Grow=No or have
 reached their MaxSize settings. </li>
        </ul>
        <p>This alarm is not raised in the following circumstances:</p>
        <ul>
            <li>All files
 in the log are set to prevent growth, and the log is 5% full.</li>
        </ul>
    </body>
</html>
