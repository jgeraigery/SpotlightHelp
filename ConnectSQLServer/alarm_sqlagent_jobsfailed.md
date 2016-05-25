<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:timeEstimate="0" MadCap:priority="0" MadCap:status="In Progress" MadCap:lastBlockDepth="7" MadCap:lastHeight="323" MadCap:lastWidth="788">
    <head><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="jobs failed in the last N minutes;SQL Agent - Jobs Failed alarm;alarms:SQL Agent - Jobs Failed" />SQL Agent - Jobs Failed Alarm</h1>
        <p>The <b>SQL Agent - Jobs Failed</b> alarm is raised when <MadCap:variable name="Primary.ProductNameLong" /> detects that at least one SQL Agent job has failed in the last&#160;few 
 minutes.</p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <ul>
            <li>Open the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_supportservices.htm">SQL Server | Support Services Drilldown</MadCap:xref> | 
 <b>SQL Agent Jobs</b> page. Determine which jobs have failed recently.&#160;You can double click 
 any job to view the messages that it logged during its last run. This 
 page shows the last run time and completion status of each job, as well 
 as a graph showing which jobs ran recently, and the completion status 
 for each run.</li>
        </ul>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Configure.flsnp">
        </MadCap:snippetBlock>
        <p>This alarm can be configured for your environment. <MadCap:xref href="../AlarmsDialog/configure_alarms.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Configure | Alarms</span>.</MadCap:xref></p>
        <ul>
            <li>You can configure  this alarm to ignore certain values. <MadCap:xref href="../AlarmsDialog/configure_alarm_ignorevalues.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Do not alarm for certain values</span>.</MadCap:xref></li>
        </ul>
        <ul>
            <li>You can configure different alarm severities for specific agent jobs. <MadCap:snippetText src="../Resources/Snippets/SoSSE/Alarm_SeeKeyedAlarmsref.flsnp" /></li>
        </ul>
    </body>
</html>