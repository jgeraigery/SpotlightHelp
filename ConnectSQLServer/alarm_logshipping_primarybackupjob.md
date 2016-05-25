<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:timeEstimate="0" MadCap:priority="0" MadCap:status="In Progress" MadCap:lastBlockDepth="6" MadCap:lastHeight="267" MadCap:lastWidth="928">
    <head>
        <link href="../Resources/TableStyles/NoteTable_Blue_DoNotEdit.css" rel="stylesheet" MadCap:stylesheetType="table" /><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="alarms:Log Shipping - Primary Backup Job;Log Shipping - Primary Backup Job alarm" />Log Shipping - Primary Backup Job Alarm</h1>
        <p>The <b>Log Shipping - Primary Backup Job</b> alarm is raised when the backup job on the primary database is not enabled.</p>
        <p>This alarm alerts you to jobs that are inadvertently or otherwise disabled.</p>
        <table style="width: 100%;mc-table-style: url('../Resources/TableStyles/NoteTable_Blue_DoNotEdit.css');" class="TableStyle-NoteTable_Blue_DoNotEdit" cellspacing="0">
            <col class="TableStyle-NoteTable_Blue_DoNotEdit-Column-Column1" style="width: 0.3in;">
            </col>
            <col class="TableStyle-NoteTable_Blue_DoNotEdit-Column-Column1">
            </col>
            <tbody>
                <tr class="TableStyle-NoteTable_Blue_DoNotEdit-Body-Body1">
                    <td class="TableStyle-NoteTable_Blue_DoNotEdit-BodyB-Column1-Body1">
                        <p>
                            <img src="../Resources/Images/DSGStandard/Note_Info.gif" style="max-width: 90%;">
                            </img>
                        </p>
                    </td>
                    <td class="TableStyle-NoteTable_Blue_DoNotEdit-BodyA-Column1-Body1">
                        <p><span class="DellDarkBlue">TIP:</span> The Primary ID column  may be hidden by default. See <MadCap:xref href="../ChartsAndGrids/grid_organizecolumns.htm" target="" title="" alt="">Show, Hide &amp; Order Columns</MadCap:xref> for more information on how to display hidden columns.</p>
                    </td>
                </tr>
            </tbody>
        </table>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Configure.flsnp">
        </MadCap:snippetBlock>
        <ul>
            <li class="Note">You can configure  this alarm to ignore certain values. <MadCap:xref href="../AlarmsDialog/configure_alarm_ignorevalues.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Do not alarm for certain values</span>.</MadCap:xref></li>
        </ul>
        <ul>
            <li class="Note">
                <p>You can configure different alarm severities for specific primary databases. <MadCap:snippetText src="../Resources/Snippets/SoSSE/Alarm_SeeKeyedAlarmsref.flsnp" /> The key for this alarm is the ID of the primary database. You can see this information in the Transaction Log Shipping Primaries grid on the Primaries page of the High Availability drilldown.</p>
            </li>
        </ul>
    </body>
</html>