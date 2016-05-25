<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:id="Paging File Disk Location alarm" MadCap:timeEstimate="0" MadCap:priority="0" MadCap:status="In Progress" MadCap:lastBlockDepth="4" MadCap:lastHeight="174" MadCap:lastWidth="954">
    <head><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="Paging - Disk Activity alarm" />Paging - Disk Activity Alarm</h1>
        <p>This alarm is activated when paging is low, but the average disk 
 activity on a paging file disk is high. This value is taken over a specific 
 number of background collections.</p>
        <p>The recommended action is:- Put files that are accessed frequently (such as database files) on a different physical disk than the Windows paging file(s).</p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Configure.flsnp">
        </MadCap:snippetBlock>
        <ul>
            <li class="Note">You can configure  this alarm to ignore certain values. <MadCap:xref href="../AlarmsDialog/configure_alarm_ignorevalues.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Do not alarm for certain values</span>.</MadCap:xref></li>
        </ul>
    </body>
</html>