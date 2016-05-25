<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:lastBlockDepth="4" MadCap:lastHeight="367" MadCap:lastWidth="870">
    <head><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="Memory - Page Life Expectancy alarm;alarms:Memory - Page Life Expectancy" />Memory - Page Life Expectancy Alarm</h1>
        <p>The <b>Memory - Page Life Expectancy 
 alarm</b> becomes active when the page life expectancy falls below 
 a threshold.</p>
        <p>A low page life expectancy indicates that SQL Server is evicting 
 pages from the buffer cache thus reducing the value of the cache. This 
 has the effect of requiring SQL Server to perform more disk reads. Performing 
 extra disk reads degrades SQL Server performance.</p>
        <p>This often has one of two causes: SQL Server has insufficient 
 memory to work with, or SQL queries are accessing a very large number 
 of pages in a non-sequential manner. Microsoft recommends that page life 
 expectancy be greater than 5 minutes (300 seconds).</p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <ul>
            <li>Ensure 
 that SQL Server is configured to use as much physical memory as possible. 
 Check, and if necessary alter, the <b>Max 
 Server Memory (MB)</b> parameter in the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_configuration.htm" target="" title="" alt="">Configuration Drilldown</MadCap:xref>.</li>
            <li>If you have applications 
 other than SQL Server running on the Windows server, and the SQL Memory gauge 
 on the main page shows that SQL Server is not using all the memory it 
 could, then these applications could be taking memory away from SQL Server. 
 Consider increasing your <b>SQL Server Min 
 Memory</b> parameter setting so that SQL Server gets more memory. (You 
 can check this setting on the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_configuration.htm" target="" title="" alt="">Configuration Drilldown</MadCap:xref>).</li>
            <li>Consider adding more 
 physical RAM to the server.</li>
            <li>Identify inefficient 
 SQL using the <b>Sessions</b> page on 
 the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_sqlactivity.htm" target="" title="" alt="">SQL Activity Drilldown</MadCap:xref>. Look 
 for sessions that are active and that are generating a large number of 
 I/O operations. The <b>Session Trace</b> 
 sub-page on the Sessions page or Microsoft's SQL Server Profiler tool 
 can help here.</li>
        </ul>
    </body>
</html>