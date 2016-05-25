---
title: ﻿Clusters - Failed Over Alarm
keywords: mydoc
summary: "The Clusters - Failed Over alarm is raised when a cluster fails over."
sidebar: c_sqlserver_sidebar
toc: false
permalink: /sqlserver_alarm_clusters_failedover/
---


﻿<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:lastBlockDepth="6" MadCap:lastHeight="542" MadCap:lastWidth="803">
    <head><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="alarms:Databases - Dynamic Data File Growths Remaining;databases:Dynamic Data File Growths Remaining alarm" />Databases - Dynamic Data File Group Growths Remaining Alarm</h1>
        <p>The <b>Databases - Dynamic Data File Group Growths
 Remaining</b> alarm becomes active when a non fixed size data file
 in any database is in danger of running out of space to grow. This alarm
 is raised when a data file is almost full and the file cannot automatically
 grow enough to relieve the problem. Once a data file fills completely,
 depending on the state of other data files within the file group, attempts
 to update data in that database may fail. This alarm takes into account
 the amount of free space currently on the disk that the file resides on.
 </p>
        <p>The alarm is raised when the number of growths remaining,
 given the files growth settings and the amount of free disk space available,
 falls below a threshold. </p>
        <p>This alarm can occur when a data file is filling up and the file
 is approaching, or has reached, its MaxSize settings and is defined with
 <b>Auto Grow=Yes</b> and there are a limited
 number of growths that can occur before an out of disk space condition
 occurs.</p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <p>View the <b>Data
 Files</b> page on the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_databases.htm" target="" title="" alt="">Databases Drilldown</MadCap:xref>. Check for files with <b>Auto Grow=Yes</b>; files in danger of filling
 will have a low <b>Free Pct</b> figure.</p>
        <p>To resolve this problem, free up
 disk space on the disk that the file resides on.</p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Configure.flsnp">
        </MadCap:snippetBlock>
        <ul>
            <li class="Note">You can configure  this alarm to ignore certain values. <MadCap:xref href="../AlarmsDialog/configure_alarm_ignorevalues.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Do not alarm for certain values</span>.</MadCap:xref></li>
        </ul>
        <ul>
            <li class="Note">You can configure different alarm severities for specific  data files. <MadCap:snippetText src="../Resources/Snippets/SoSSE/Alarm_SeeKeyedAlarmsref.flsnp" /></li>
        </ul>
        <h2>Examples</h2>
        <p>This alarm is raised in the following circumstances:</p>
        <ul>
            <li>The data file is
 95% full, and the data file has been defined such that Auto Grow=Yes and,
 given the current growth increment, the file has a limited number of growths
 remaining before it will consume all available disk space.</li>
        </ul>
    </body>
</html>
