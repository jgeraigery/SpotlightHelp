---
title: ﻿Clusters - Failed Over Alarm
keywords: mydoc
summary: "The Clusters - Failed Over alarm is raised when a cluster fails over."
sidebar: c_sqlserver_sidebar
toc: false
permalink: /sqlserver_alarm_clusters_failedover/
---


﻿<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:timeEstimate="0" MadCap:priority="0" MadCap:status="In Progress" MadCap:lastBlockDepth="4" MadCap:lastHeight="211" MadCap:lastWidth="833">
    <head><title></title>
    </head>
    <body>
        <h1>Latch - Total Wait Time Rate Alarm</h1>
        <p>Latches are monitored to help identify performance bottlenecks.</p>
        <p>Total latch wait time is recalculated every second as the number of milliseconds spent in wait time for that second. A high rate of increase in total wait time (by 1000 or more ms/s) raises the Latch - Total Wait Time Rate alarm.</p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <p> There has been a high increase (ms/s) in the total wait time for latch requests.</p>
        <p>Open the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_sqlactivity.htm"><span style="color: #0078b6;" class="mcFormatColor">SQL Server | SQL Activity Drilldown</span></MadCap:xref> | Locks page. Refer to the <b>Latches chart</b> for details.</p>
    </body>
</html>
