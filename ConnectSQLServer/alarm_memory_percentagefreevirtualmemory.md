<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:timeEstimate="0" MadCap:priority="0" MadCap:status="In Progress" MadCap:lastBlockDepth="4" MadCap:lastHeight="259" MadCap:lastWidth="870">
    <head><title></title>
        <style>
body
{
	background-color: #ffffff;
}

</style>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="Memory - Percentage Free Virtual Memory alarm" />Memory - Percentage Free Virtual Memory Alarm</h1>
        <p>This alarm is activated when the average free virtual memory drops below 
 a threshold. This value is taken over a specific 
 number of background collections.</p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <ul>
            <li>
                <p>Look at 
 the <b>Processes </b>page on the <MadCap:xref href="../Drilldowns/drilldown_windows_processes.htm" target="" title="" alt="">Processes Drilldown</MadCap:xref>. 
 Look at the <b>VM&#160;Size (MB)</b> column 
 to see which applications are using the most virtual memory.</p>
                <p>Some applications 
 (such as Microsoft Exchange or Microsoft SQL Server) can have their memory 
 utilization limited.</p>
            </li>
            <li>Close 
 any superfluous processes.</li>
            <li>Look at increasing 
 the size of the page file.</li>
            <li>Look at increasing 
 the amount of RAM in the Windows Server.</li>
        </ul>
    </body>
</html>