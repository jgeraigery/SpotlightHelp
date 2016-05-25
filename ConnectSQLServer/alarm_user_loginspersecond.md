<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:timeEstimate="0" MadCap:priority="0" MadCap:status="In Progress" MadCap:lastBlockDepth="4" MadCap:lastHeight="260" MadCap:lastWidth="827">
    <head><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="User - Logins Per Second alarm;alarms:User - Logins Per Second" />User - Logins Per Second Alarm</h1>
        <p>The <b>User - Logins Per Second        </b>alarm 
 is raised when the average number of logins per second exceeds a threshold.&#160;This value is taken over a specific number of background collections.</p>
        <p>This 
 can be an indicator of poor application design. Creating a connection 
 to SQL Server is relatively expensive, and coding practices where an application 
 repeatedly connects and disconnects from SQL Server should be avoided.</p>
        <p>While reconnecting will not necessarily slow down all users 
 of the SQL Server instance, it will often result in poor performance for 
 the application that is re-connecting all the time.</p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <p>Use <b>Microsoft SQL Server Profiler </b> to monitor connect and disconnect events, and determine if a badly behaving application is causing the problem.</p>
    </body>
</html>