---
title: ﻿Clusters - Failed Over Alarm
keywords: mydoc
summary: "The Clusters - Failed Over alarm is raised when a cluster fails over."
sidebar: c_sqlserver_sidebar
toc: false
permalink: /sqlserver_alarm_clusters_failedover/
---


﻿<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:lastBlockDepth="6" MadCap:lastHeight="416" MadCap:lastWidth="953">
    <head>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="alarms:I/O Wait Time;I/O Wait Time alarm" />I/O Stall Time Alarm</h1>
        <p>The <b>I/O Stall Time</b> alarm becomes active when the average I/O wait  time for any database file exceeds a threshold. This value is taken over a specific number of background collections.</p>
        <p>Sustained high I/O wait  times are a good indicator that you have a disk subsystem bottleneck and  that I/O device service times will be degraded.</p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <p>Look at:</p>
        <ul>
            <li>
                <p>The <b>I/O</b> page on the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_diagnostics.htm" target="" title="" alt="">Diagnostics Drilldown</MadCap:xref> to see what is contributing to I/O consumption. If SQL&#160;Server is contributing to I/O consumption look at the following:</p>
                <ul style="list-style-type: circle;">
                    <li>The <b>I/O by File</b> page on the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_sqlactivity.htm" target="" title="" alt="">SQL Activity Drilldown</MadCap:xref> to see  which files are waiting on I/O operations. High rates of wait on log files may  indicate that the device on which the log file resides is not able to keep up.</li>
                    <li>
                        <p>The <b>Sessions</b> page on the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_sqlactivity.htm" target="" title="" alt="">SQL Activity Drilldown</MadCap:xref> to see which  SQL Server sessions are generating high amounts of disk activity. The SQL and  the query plan are available for further analysis by clicking a row in the  grid.</p>
                    </li>
                    <li>
                        <p>The <MadCap:xref href="../Drilldowns/drilldown_sqlserver_waitstats.htm" target="" title="" alt="">Top SQL Statements Drilldown</MadCap:xref>. Looking at the top statements by Avg  Logical Reads/Writes shows SQL that may be doing large amounts of logical I/O. This logical I/O may result in unnecessary physical I/O.</p>
                    </li>
                </ul>
            </li>
        </ul>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Configure.flsnp">
        </MadCap:snippetBlock>
        <ul>
            <li class="Note">You can configure  this alarm to ignore certain values. <MadCap:xref href="../AlarmsDialog/configure_alarm_ignorevalues.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Do not alarm for certain values</span>.</MadCap:xref></li>
        </ul>
        <ul>
            <li class="Note">You can configure different thresholds for specific database files. <MadCap:snippetText src="../Resources/Snippets/SoSSE/Alarm_SeeKeyedAlarmsref.flsnp" /></li>
        </ul>
    </body>
</html>
