---
title: ﻿Clusters - Failed Over Alarm
keywords: mydoc
summary: "The Clusters - Failed Over alarm is raised when a cluster fails over."
sidebar: c_sqlserver_sidebar
toc: false
permalink: /sqlserver_alarm_clusters_failedover/
---


﻿<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:timeEstimate="0" MadCap:priority="0" MadCap:status="In Progress" MadCap:lastBlockDepth="6" MadCap:lastHeight="519" MadCap:lastWidth="948">
    <head><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="databases:Log Flush Wait Time alarm;alarms:Databases - Log Flush Wait Time" />Databases - Log Flush Wait Time Alarm</h1>
        <p>The <b>Databases - Log Flush Wait Time</b> alarm becomes active when the duration of the last log flush for
 a database exceeds a threshold.</p>
        <p>As users make modifications to SQL Server databases, SQL
 Server records these changes in a memory structure called the <b>Log
 Cache</b>. Each SQL Server database has its own log cache.</p>
        <p>When a user transaction is committed (either explicitly via
 a COMMIT statement, or implicitly), SQL Server writes all changes from
 the <b>Log Cache</b> out to the log files
 on disk. This process is termed a <b>log
 flush</b>. The user that issued the commit must wait until the log
 flush is complete before they can continue. If the log flush takes a long
 time, this will degrade the user's response time.</p>
        <p>Note that <MadCap:variable name="Primary.ProductNameLong" /> checks the log
 flush wait time for the last log flush performed for each database. If
 a database has a slow log flush, and then has no update activity (and
 therefore no more log flushes) for a long time, <MadCap:variable name="Primary.ProductNameLong" /> will still continue to report this as an alarm until another
 log flush is performed for that database.</p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <ul>
            <li>On the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_databases.htm" target="" title="" alt="">Databases Drilldown</MadCap:xref>, select the <b>Summary</b> tab to review the <b>Log Flush Wait Time</b> counter in the <b>Database History </b>graph. The database with the high graph values is the one experiencing the problem. If a database has a consistently high value that never changes, run SQL command <b>CHECKPOINT</b> on that database to force another log flush and check the value in <MadCap:variable name="Primary.ProductNameLong" />
 again. </li>
            <li>Select the <b>Transaction Logs </b>tab on the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_databases.htm" target="" title="" alt="">Databases Drilldown</MadCap:xref> to find the disks on which the log for this database resides. </li>
            <li>For the connection to the Windows server host, select the <b>Logical Disk Activity</b> page on the <MadCap:xref href="../Drilldowns/drilldown_windows_disks.htm" target="" title="" alt="">Disks Drilldown</MadCap:xref> to check I/O service
 rates for the disks in question.</li>
            <li>Consider moving the log files to disks that support fast write activity (for example, a fast
 <b>RAID</b> controller with write-back caching enabled). </li>
            <li>Consider moving log files off <b>RAID-5</b> devices as these
 are optimized for read activity, and log files generate mainly write activity.</li>
        </ul>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Configure.flsnp">
        </MadCap:snippetBlock>
        <ul>
            <li class="Note">You can configure  this alarm to ignore certain values. <MadCap:xref href="../AlarmsDialog/configure_alarm_ignorevalues.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Do not alarm for certain values</span>.</MadCap:xref></li>
        </ul>
        <ul>
            <li class="Note">You can configure different alarm severities for specific  databases. <MadCap:snippetText src="../Resources/Snippets/SoSSE/Alarm_SeeKeyedAlarmsref.flsnp" /></li>
        </ul>
    </body>
</html>
