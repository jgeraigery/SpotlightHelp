---
title: ﻿Clusters - Failed Over Alarm
keywords: mydoc
summary: "The Clusters - Failed Over alarm is raised when a cluster fails over."
sidebar: c_sqlserver_sidebar
toc: false
permalink: /sqlserver_alarm_clusters_failedover/
---


﻿<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:timeEstimate="0" MadCap:priority="0" MadCap:status="In Progress" MadCap:lastBlockDepth="8" MadCap:lastHeight="435" MadCap:lastWidth="902">
    <head>
        <link href="../Resources/TableStyles/NoteTable_Blue_DoNotEdit.css" rel="stylesheet" MadCap:stylesheetType="table" /><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="Locks - Deadlocks alarm;alarms:Locks - Deadlocks" />Locks - Deadlocks Alarm</h1>
        <MadCap:snippetBlock src="../Resources/Snippets/Requirements/SQLServer2000NoNote.flsnp" />
        <p>The <b>Locks - Deadlocks </b>alarm
is raised when the number of deadlocks that have occurred since the previous data collection exceeds a threshold.</p>
        <p>A <b>Deadlock</b> occurs
 when multiple SQL Server sessions request conflicting locks in such a
 way that two locks are blocked by each other. The simplest example is
 with two sessions. Imagine the following sequence of events:</p>
        <ul>
            <li>Session
 1 updates Row1</li>
            <li>Session 2 updates
 Row2</li>
            <li>Session 1 tries to
 update Row2 - it waits because the row is locked by&#160;Session 2</li>
            <li>Session 2 tries to
 update Row1 - it waits because the row is locked by&#160;Session 1</li>
        </ul>
        <p>Here we have Session 1 waiting on a lock held by Session
 2 and Session 2 waiting on one held by Session 1. In this example, both
 sessions would wait forever, so SQL Server chooses one of them as the
 deadlock victim, kills their connection and rolls back their updates so
 that the other can continue. The user that is rolled back will often receive
 an error message.</p>
        <p>The example above is the simplest type of deadlock, involving
 only two sessions. However, deadlocks can involve many more sessions,
 and it can be very difficult to track down the root cause of all the trouble. <MadCap:variable name="Primary.ProductNameLong" /> provides some features to make this
 task easier.</p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <ul>
            <li>Look at the <b>Locks </b>tab on the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_sqlactivity.htm" target="" title="" alt="">SQL Activity Drilldown</MadCap:xref> to view the <b>Deadlocks/sec</b>
 counter on the <b>Lock Types </b>chart. This shows you how frequently deadlocks are occurring in your system.</li>
        </ul>
    </body>
</html>
