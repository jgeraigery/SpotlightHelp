---
title: ﻿Clusters - Failed Over Alarm
keywords: mydoc
summary: "The Clusters - Failed Over alarm is raised when a cluster fails over."
sidebar: c_sqlserver_sidebar
toc: false
permalink: /sqlserver_alarm_clusters_failedover/
---


﻿<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:timeEstimate="0" MadCap:priority="0" MadCap:status="In Progress" MadCap:lastBlockDepth="8" MadCap:lastHeight="658" MadCap:lastWidth="902">
    <head>
        <link href="../Resources/TableStyles/NoteTable_Blue_DoNotEdit.css" rel="stylesheet" MadCap:stylesheetType="table" /><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="Locks - Blocked Processes alarm;alarms:Locks - Blocked Processes" />Locks - Blocked Processes Alarm</h1>
        <p>The <b>Locks - Blocked Processes</b> alarm is raised when a block persists for longer
 than the time specified in the threshold. The default is 120 seconds.</p>
        <p>Blocking occurs when there is at least one SQL Server session
 that is waiting on a lock held by another session. The waiting user is
 said to be 'blocked' by the one holding the lock, and will wait until
 either the blocking user commits/rolls back (and therefore frees up the
 resource being waited on), or the blocked user's application timeout expires,
 in which case the blocked command will be canceled.</p>
        <table style="width: 100%;mc-table-style: url('../Resources/TableStyles/NoteTable_Blue_DoNotEdit.css');" class="TableStyle-NoteTable_Blue_DoNotEdit" cellspacing="0">
            <col class="TableStyle-NoteTable_Blue_DoNotEdit-Column-Column1" style="width: 0.3in;" />
            <col class="TableStyle-NoteTable_Blue_DoNotEdit-Column-Column1" />
            <tbody>
                <tr class="TableStyle-NoteTable_Blue_DoNotEdit-Body-Body1">
                    <td class="TableStyle-NoteTable_Blue_DoNotEdit-BodyB-Column1-Body1">
                        <p>
                            <img src="../Resources/Images/DSGStandard/Note_Info.gif" style="max-width: 90%;" />
                        </p>
                    </td>
                    <td class="TableStyle-NoteTable_Blue_DoNotEdit-BodyA-Column1-Body1">
                        <p><span class="DellDarkBlue">Note:</span> Many applications do not
 set a timeout and will wait forever for locks to be freed.</p>
                    </td>
                </tr>
            </tbody>
        </table>
        <p>Excessive blocking can be a major cause of poor application
 performance, as the user of an application often does not realize that
 they are waiting on a lock held by another user. From their point of view,
 it often seems like their application has stopped responding.</p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <p>Look at:</p>
        <ul>
            <li>
                <p>The <b>Blocking </b>page on the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_sqlactivity.htm" target="" title="" alt="">SQL Activity Drilldown</MadCap:xref>
 to see who is blocking whom, and what resources are involved (for example,
 database and table names etc).&#160;In the case of multiple blocks where
 there are blocked&#160;sessions that are also blocking others, this page
 will show you who is at the head of the chain and is, therefore, probably
 the root cause of all the blocking. This page also shows how many sessions
 were blocked over time. </p>
                <p>You can kill any session and free up any locks
 it holds. Select the session and click           <b>Kill
 session</b>.</p>
                <p>
                    <img src="../Images/tb_drilldown_session_kill.png" />
                </p>
            </li>
            <li>
                <p>The <b>Sessions</b>
 page on the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_sqlactivity.htm" target="" title="" alt="">SQL Activity Drilldown</MadCap:xref>
 to view the most recent SQL for the sessions involved in the blocking. This can help track down sub-optimal SQL that may contribute to the locking
 problem. </p>
                <p>You can kill any session and free up any locks
 it holds. Select the session and click           <b>Kill
 session</b>.</p>
                <p>
                    <img src="../Images/tb_drilldown_session_kill.png" />
                </p>
            </li>
            <li>
                <p>The <b>Locks</b>
 page on the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_sqlactivity.htm" target="" title="" alt="">SQL Activity Drilldown</MadCap:xref>
 to view all locks in the system.&#160;This will show you all SQL Server
 locks currently granted or requested. </p>
                <p>You can kill any session and free up any locks
 it holds. Select the session and click           <b>Kill
 session</b>.</p>
                <p>
                    <img src="../Images/tb_drilldown_session_kill.png" />
                </p>
            </li>
        </ul>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Configure.flsnp">
        </MadCap:snippetBlock>
        <ul>
            <li class="Note">You can configure  this alarm to ignore certain values. <MadCap:xref href="../AlarmsDialog/configure_alarm_ignorevalues.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Do not alarm for certain values</span>.</MadCap:xref></li>
        </ul>
        <ul>
            <li class="Note">You can configure different alarm severities for specific blocked sessions. <MadCap:snippetText src="../Resources/Snippets/SoSSE/Alarm_SeeKeyedAlarmsref.flsnp" /> The key for this alarm is the SPID of the blocked session. You can see this information on the Blocking page of the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_sqlactivity.htm" target="" title="" alt="">SQL Activity Drilldown</MadCap:xref>.</li>
        </ul>
    </body>
</html>
