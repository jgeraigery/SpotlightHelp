<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:timeEstimate="0" MadCap:priority="0" MadCap:status="In Progress" MadCap:lastBlockDepth="6" MadCap:lastHeight="605" MadCap:lastWidth="962">
    <head><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="alarms:Missing SQL Performance Counters;Missing SQL Performance Counters alarm" />Missing SQL Performance Counters Alarm</h1>
        <p>Spotlight on SQL Server uses the SQL Server virtual table <b>sysperfinfo</b> to retrieve data for many of its displays. In some rare cases, this table may not contain information. When this is the case, Spotlight on SQL Server will not be able to collect the data it requires, and will display "0" for many of its metrics. Most obvious will be the <b>Memory</b> icons on the home page, which will show 0 MB of memory used by SQL Server. Also, many of the flows on the home page will show no activity, and many drilldowns will show incomplete information.</p>
        <p>Spotlight on SQL Server raises an informational alarm shortly after connecting if it detects that the <b>sysperfinfo</b> table contains no data.</p>
        <p>You can confirm the existence of this problem by running the following SQL in SQL Server Management Studio for SQL Server 2005 or later:</p>
        <p class="Syntax">select * from sys.dm_os_performance_counters</p>
        <p>or by running the following SQL in Query Analyzer for SQL Server 2000:</p>
        <p class="Syntax">select * from master..sysperfinfo</p>
        <p>If this query returns no records, then your SQL Server performance counters are missing and Spotlight on SQL Server will not be able to operate correctly.</p>
        <p>Sometimes, for a variety of reasons, the SQL Server Performance Monitor counters will not show up as they should. Often, but not always, this problem can be fixed by following these steps:</p>
        <ol>
            <li>
                <p>At the command prompt, type the following:</p>
                <p class="Syntax">unlodctr.exe MSSQLServer</p>
            </li>
            <li>
                <p>Then type:</p>
                <p class="Syntax">lodctr.exe \binn\sqlctr.ini</p>
            </li>
            <li>Reboot the server.</li>
        </ol>
        <p>If the Analysis Services counters can't be found use the following:</p>
        <ol>
            <li>
                <p>At the command prompt, type the following:</p>
                <p class="Syntax">unlodctr.exe MSSQLServerOLAPService</p>
            </li>
            <li>
                <p>Then type:</p>
                <p class="Syntax">lodctr.exe \binn\msmdctr.ini</p>
            </li>
            <li>Reboot the server.</li>
        </ol>
        <p>If an unexpected error message is displayed, look it up at <a href="http://msdn.microsoft.com/" target="_blank">msdn.microsoft.com</a>. Note, this tip is for non-clustered SQL Servers only.</p>
    </body>
</html>