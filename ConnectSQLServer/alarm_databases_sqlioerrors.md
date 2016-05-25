---
title: ﻿Clusters - Failed Over Alarm
keywords: mydoc
summary: "The Clusters - Failed Over alarm is raised when a cluster fails over."
sidebar: c_sqlserver_sidebar
toc: false
permalink: /sqlserver_alarm_clusters_failedover/
---


﻿<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:timeEstimate="0" MadCap:priority="0" MadCap:status="In Progress" MadCap:lastBlockDepth="4" MadCap:lastHeight="201" MadCap:lastWidth="974">
    <head><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="databases:SQL I/O Errors alarm;alarms:Databases - SQL I/O Errors" />Databases - SQL I/O Errors Alarm</h1>
        <p>The <b>Databases - SQL I/O Errors</b> alarm is raised
 when I/O errors are encountered by SQL Server.&#160;</p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <ul>
            <li>View the <b>Error Log</b> drilldown and look for messages indicating I/O problems. <MadCap:xref href="../Drilldowns/drilldown_sqlserver_errorlog.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">SQL Server | Error Log Drilldown</span>.</MadCap:xref></li>
            <li>View the Windows <b>Event Logs</b> and look for messages
 relating to I/O problems. <MadCap:xref href="../Drilldowns/drilldown_windows_eventlog.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Windows Server | Events Logs Drilldown</span>.</MadCap:xref></li>
        </ul>
        <p>The majority of I/O errors reported by SQL Server are caused
 by hardware failures, such as disk or controller failures.</p>
    </body>
</html>
