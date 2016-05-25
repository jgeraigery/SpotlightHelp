<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:timeEstimate="0" MadCap:priority="0" MadCap:status="In Progress" MadCap:lastBlockDepth="4" MadCap:lastHeight="328" MadCap:lastWidth="870">
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
            <MadCap:keyword term="Network - Percentage Bandwidth alarm" />Network - Percentage Bandwidth Alarm</h1>
        <p>The average network bandwidth capacity of the specified network 
 card is nearing the limit where it is saturating the network link. This value is taken over a specific 
 number of background collections.</p>
        <p>If 
 this is happening regularly, look at:</p>
        <ul>
            <li>The <b>NBT</b> page of the <MadCap:xref href="../Drilldowns/drilldown_windows_network.htm" target="" title="" alt="">Network Drilldown</MadCap:xref> to 
 see if any users or other systems are copying an inordinate level of data 
 between systems.</li>
            <li>Moving network applications 
 or shared files to another Windows server to balance the load.</li>
            <li>Upgrading the network 
 subsystem to a faster technology.</li>
            <li>Adding an additional 
 network card to the Windows server and configuring the system to utilize it.</li>
        </ul>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Configure.flsnp">
        </MadCap:snippetBlock>
        <ul>
            <li class="Note">You can configure  this alarm to ignore certain values. <MadCap:xref href="../AlarmsDialog/configure_alarm_ignorevalues.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Do not alarm for certain values</span>.</MadCap:xref></li>
        </ul>
        <ul>
            <li class="Note">If there 
 are multiple network cards on the target system, right-click the gauge and select <b>Select network card</b> to choose which one you want to display. <MadCap:xref href="../Configure/configure_windows_networkcard.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Windows Server | Home Page | Select the Network Card</span>.</MadCap:xref></li>
        </ul>
    </body>
</html>