<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:timeEstimate="0" MadCap:priority="0" MadCap:status="In Progress" MadCap:lastBlockDepth="8" MadCap:lastHeight="331" MadCap:lastWidth="902">
    <head>
        <link href="../Resources/TableStyles/NoteTable_Blue_DoNotEdit.css" rel="stylesheet" MadCap:stylesheetType="table" /><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="alarms:Log Shipping - Secondary Latency;Log Shipping - Secondary Latency alarm" />Log Shipping - Secondary Latency Alarm</h1>
        <p>The <b>Log Shipping - Secondary Latency</b> alarm is raised when the amount of time that elapsed between the log backup being created on the primary database and when it was restored on the secondary database exceeds a threshold.</p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <p>It may indicate a problem in getting data from the primary database to the secondary database. Looking at the history of the copy or restore job may help identify the problem. To do this, go to the Secondaries page of the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_highavailability.htm" target="" title="" alt="">High Availability Drilldown</MadCap:xref> and select an item in the grid to view the history.</p>
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
                <p>You can configure different alarm severities for specific secondary databases. <MadCap:snippetText src="../Resources/Snippets/SoSSE/Alarm_SeeKeyedAlarmsref.flsnp" /> The key for this alarm is the ID of the secondary database. You can see this information in the Transaction Log Shipping Secondaries grid on the Secondaries page of the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_highavailability.htm" target="" title="" alt="">High Availability Drilldown</MadCap:xref>.</p>
            </li>
        </ul>
    </body>
</html>