---
title: ﻿Clusters - Failed Over Alarm
keywords: mydoc
summary: "The Clusters - Failed Over alarm is raised when a cluster fails over."
sidebar: c_sqlserver_sidebar
toc: false
permalink: /sqlserver_alarm_clusters_failedover/
---


﻿<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:lastBlockDepth="8" MadCap:lastHeight="285" MadCap:lastWidth="902">
    <head>
        <link href="../Resources/TableStyles/NoteTable_Blue_DoNotEdit.css" rel="stylesheet" MadCap:stylesheetType="table" />
        <link href="../Resources/TableStyles/NoteTable_Blue_DoNotEdit.css" rel="stylesheet" MadCap:stylesheetType="table" /><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="Index Fragmentation alarm;alarms:Index Fragmentation" />Index Fragmentation Alarm</h1>
        <p>The <b>Index Fragmentation</b> alarm is raised when the largest Index file on the SQL Server is more than 5% fragmented.
It is a good idea to defragment large index files that are more than 5% fragmented.</p>
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
                        <p><span class="DellDarkBlue">Note:</span> Spotlight only checks large index files, that is Index files that have over 1000 pages.</p>
                    </td>
                </tr>
            </tbody>
        </table>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <ol>
            <li>Open the <b><MadCap:xref href="../Drilldowns/drilldown_sqlserver_databases.htm" target="" title="" alt="">Databases Drilldown</MadCap:xref> | Fragmented Indexes</b>.</li>
            <li>Select the index to defragment and click <b>Fragmented Indexes | Generate defragmentation script</b>.</li>
            <li>
                <p>Use SQL Server Management Studio to schedule a job to run this script during a quiet period. </p>
            </li>
        </ol>
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
                        <p><span class="DellDarkBlue">TIP:</span> Choose a quiet time to run this script. Execution of this script could put significant load on the SQL Server.</p>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
