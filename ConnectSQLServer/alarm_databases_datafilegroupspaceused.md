---
title: ﻿Clusters - Failed Over Alarm
keywords: mydoc
summary: "The Clusters - Failed Over alarm is raised when a cluster fails over."
sidebar: c_sqlserver_sidebar
toc: false
permalink: /sqlserver_alarm_clusters_failedover/
---


﻿<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:lastBlockDepth="6" MadCap:lastHeight="518" MadCap:lastWidth="803">
    <head><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="databases:Fixed Data File Used alarm;alarms:Databases - Fixed Data File Used" />Databases - Data File Group Space Used Alarm</h1>
        <p>The <b>Databases - Data File Group Space Used Alarm</b> is raised when a fixed size data file in any database
 is in danger of filling. It is raised when a data file is almost full
 and the file cannot automatically grow enough to relieve the problem.
 Once a data file fills completely, depending on the state of other data
 files within the file group, attempts to update anything in that database
 may fail. This alarm takes into account the amount of free space currently
 within a fixed sized data file.</p>
        <p>The alarm is raised when the free space in a data file falls
 below a certain percentage of the file's current total size. </p>
        <p>This alarm can occur when a data file is filling up and the file
 is approaching, or has reached, its <b>MaxSize</b>
 settings and is defined with <b>Auto Grow=No</b>.
 </p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <p>View the <b>Data
 Files</b> page on the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_databases.htm" target="" title="" alt="">Databases Drilldown</MadCap:xref>. In the Data Files grid,
 check for files with <b>Auto Grow=No</b>;
 files in danger of filling will have a low <b>Free
 Pct</b> figure.</p>
        <p>To resolve this problem:</p>
        <ul>
            <li>Adjust
 the file growth parameters of at least one file in the file group that
 the file belongs to so that it can grow. Make sure the Auto Grow setting
 is on, and that the MaxSize setting is larger than the current file size.</li>
        </ul>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Configure.flsnp">
        </MadCap:snippetBlock>
        <ul>
            <li class="Note">You can configure  this alarm to ignore certain values. <MadCap:xref href="../AlarmsDialog/configure_alarm_ignorevalues.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Do not alarm for certain values</span>.</MadCap:xref></li>
        </ul>
        <ul>
            <li class="Note">You can configure different alarm severities for specific  data files. <MadCap:snippetText src="../Resources/Snippets/SoSSE/Alarm_SeeKeyedAlarmsref.flsnp" /></li>
        </ul>
        <h2>Examples</h2>
        <p>This alarm will be raised in the following circumstances:</p>
        <ul>
            <li>The data
 file is 95% full, and the data file has been defined such with Auto Grow=No.</li>
        </ul>
    </body>
</html>
