---
title: ﻿Clusters - Failed Over Alarm
keywords: mydoc
summary: "The Clusters - Failed Over alarm is raised when a cluster fails over."
sidebar: c_sqlserver_sidebar
toc: false
permalink: /sqlserver_alarm_clusters_failedover/
---


﻿<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:timeEstimate="0" MadCap:priority="0" MadCap:status="In Progress" MadCap:lastBlockDepth="4" MadCap:lastHeight="280" MadCap:lastWidth="954">
    <head><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="Error Log - Error Count  alarm;alarms:Error Log - Error Count" />Error Log - Error Count Alarm</h1>
        <p>The <b>Error Log - Error Count</b> alarm
 becomes active when <MadCap:variable name="Primary.ProductNameLong" /> detects messages
 that could be potential problems in the SQL Sever error log, SQL Server
 Agent error log, or the Windows event logs.</p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <p>Look at the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_errorlog.htm" target="" title="" alt="">Error Log Drilldown</MadCap:xref> to view the errors.</p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Configure.flsnp">
        </MadCap:snippetBlock>
        <ul>
            <li class="Note">You can define
 and edit the alert rules that Spotlight scans the SQL Server Error
 Log for in the Configure Error Log Entries dialog. <MadCap:xref href="../Configure/dialog_configureerrorlogentries.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Configure | Error Log Entries</span>.</MadCap:xref></li>
            <li class="Note">Spotlight scans the error logs at the configured frequency.
 If you make changes to the alert rules it may take some time for changes
 to take effect. You can change how often Spotlight scans the error log in the Schedules
 dialog. <MadCap:xref href="../Configure/dialog_backgroundschedules.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Configure | Scheduling</span>.</MadCap:xref></li>
        </ul>
    </body>
</html>
