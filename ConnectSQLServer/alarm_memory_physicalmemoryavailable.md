<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:timeEstimate="0" MadCap:priority="0" MadCap:status="In Progress" MadCap:lastBlockDepth="5" MadCap:lastHeight="497" MadCap:lastWidth="857">
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
            <MadCap:keyword term="Memory - Physical Memory Available alarm" />Memory - Physical Memory Available Alarm</h1>
        <p>The <b>Memory - Physical Memory Available</b> alarm is activated when the available memory 
 drops below a threshold. This can result in:</p>
        <ul>
            <li>Applications 
 being unable to secure additional memory.</li>
            <li>New programs being 
 unable to open successfully.</li>
            <li>General performance 
 degradation due to excessive paging.</li>
        </ul>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <ul>
            <li>Look at the <b>Processes </b>page in the <MadCap:xref href="../Drilldowns/drilldown_windows_processes.htm" target="" title="" alt="">Processes Drilldown</MadCap:xref>. Check the <b>Phys 
 MB</b> column for processes using excessive amounts of memory. You 
 can:</li>
            <ul>
                <li>Close those applications 
 using excessive memory.</li>
                <li>Change the maximum 
 memory usage setting for those applications using excessive memory. Refer 
 to the relevant documentation to find out if this setting is supported 
 by the application.</li>
            </ul>
            <li>Purchase more physical 
 memory for your system.</li>
            <li>Determine if any 
 programs have a memory leak. To do this:</li>
            <ol style="list-style-type: lower-alpha;">
                <li>Restart the Windows Server to ensure fresh memory usage by all applications.</li>
                <li>Use the <b>Microsoft Performance Monitor </b>tool and 
 set the update interval to 10 minutes.</li>
                <li>Add the <b>Working Set Peak</b> counter for all applications 
 from the <b>Process</b> object.</li>
                <li>Leave the 
 application running on the system overnight.</li>
                <li>If there 
 is a memory leak that can be viewed in a day, it will show up with the 
 <b>Working Set Peak</b> graph for one 
 of the applications rising smoothly. If the results are inconclusive after 
 a day, some system applications that have a memory leak may exhibit the 
 behavior over a week or more. Adjust the update interval to accommodate 
 the extended period (update once per hour or more).</li>
            </ol>
        </ul>
    </body>
</html>