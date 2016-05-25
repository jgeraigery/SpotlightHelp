<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:lastBlockDepth="2" MadCap:lastHeight="263" MadCap:lastWidth="853">
    <head><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="alarms:SQL Analysis - Aggregate Information;SQL Analysis - Aggregate Information  alarm" />SQL Analysis - Aggregation Information Alarm</h1>
        <p>The <b>SQL Analysis - Aggregation Information</b> alarm is raised to indicate that some SQL 
 statements have been discarded during the collection of SQL Analysis data. 
 </p>
        <p>The process of collecting SQL Analysis data limits the size 
 of the aggregation of SQL statements returned from the monitored SQL Server 
 instance to protect against high memory consumption by the <MadCap:variable name="Primary.DiagnosticServer" />. When an event is collected from the SQL Server instance that causes 
 the aggregation to grow beyond this limit, this alarm is raised.</p>
        <p>To allow Spotlight to collect more SQL Analysis data without 
 discarding SQL statements (and raising this alarm), consider increasing 
 the value of the <b>Aggregate the top n 
 SQL statements</b> option on the <b>Advanced</b> 
 tab of the SQL Analysis Options 
 dialog. Increasing this value is likely to increase <MadCap:variable name="Primary.DiagnosticServer" /> 
 memory usage so adjusting this value to more than the default of 200 is 
 not recommended. <MadCap:xref href="../Configure/dialog_sqlanalysis.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Configure | SQL Analysis</span>.</MadCap:xref></p>
        <p>You can also reduce the number of SQL Server events being 
 aggregated by increasing the collection filter 
 settings.</p>
    </body>
</html>