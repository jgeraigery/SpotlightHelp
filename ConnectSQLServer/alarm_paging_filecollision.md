<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:id="Page File Location alarm" MadCap:timeEstimate="0" MadCap:priority="0" MadCap:status="In Progress" MadCap:lastBlockDepth="4" MadCap:lastHeight="294" MadCap:lastWidth="954">
    <head><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="Paging - File Collision alarm" />Paging - File Collision Alarm</h1>
        <p>This alarm becomes active when there is more than one paging 
 file on a single physical disk.</p>
        <p>This can cause performance degradation – 
 especially on IDE disks. IDE disks allow only a single disk operation 
 to be active on the bus at any time.</p>
        <p>To rectify this:</p>
        <ol>
            <li>Open the Windows 
 Control Panel.</li>
            <li>Double-click <b>System</b>.</li>
            <li>Click the <b>Advanced</b> tab.</li>
            <li>Select <b>Performance Settings</b>, and change the 
 paging file allocations.</li>
        </ol>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Configure.flsnp">
        </MadCap:snippetBlock>
        <ul>
            <li class="Note">You can configure  this alarm to ignore certain values. <MadCap:xref href="../AlarmsDialog/configure_alarm_ignorevalues.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Do not alarm for certain values</span>.</MadCap:xref></li>
        </ul>
    </body>
</html>