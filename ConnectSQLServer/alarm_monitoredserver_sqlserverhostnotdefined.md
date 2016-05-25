<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:lastBlockDepth="6" MadCap:lastHeight="226" MadCap:lastWidth="928">
    <head>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="alarms:Monitored Server;Monitored Server Alarms" />Monitored Server - SQL Server Host Not Defined Alarm</h1>
        <p>The <b>Monitored Server - SQL Server Host Not Defined Alarm</b> is raised for:</p>
        <ul>
            <li>
                <p>A Microsoft Cluster Server (MSCS)</p>
            </li>
            <li>Where the <b>SQL Server Connection Details</b> dialog <b>Connection</b> field is set to <b>Cluster (monitor active node)</b>.</li>
            <li>And the active cluster node is NOT in the list of available OS connections in the <b>SQL Server Connection Details</b> dialog <b>Linked OS Connection</b> drop down field.</li>
        </ul>
        <p>For a SQL Server cluster that uses the <b>Cluster (monitor active node)</b> feature there must be a Windows connection for each Windows node in the cluster. <MadCap:xref href="../Connections/connect_sqlserver.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">SQL Server | Connection Details</span>.</MadCap:xref> This alarm  clears once the Windows connection has been created.</p>
    </body>
</html>