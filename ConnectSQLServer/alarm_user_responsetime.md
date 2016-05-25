<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:lastBlockDepth="6" MadCap:lastHeight="395" MadCap:lastWidth="874">
    <head>
        <link href="../Resources/TableStyles/NoteTable_Blue_DoNotEdit.css" rel="stylesheet" MadCap:stylesheetType="table" /><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="User - Response Time alarm;alarms:User - Response Time" />User - Response Time Alarm</h1>
        <p>The <b>User - Response Time</b> alarm is raised when the time taken for Spotlight to send a simple query to the monitored SQL Server instance, have it processed and get the answer back is more than 20 seconds (or the configured threshold). The Response Time alarm does not tell you where the time is spent; it could be the network or it could be the SQL Server instance is unresponsive.</p>
        <p>This is not an error.  Spotlight is just saying that it is taking over 20 seconds (or the configured threshold) to execute the response time query in your environment.  This could be indicative of:</p>
        <ul>
            <li>Response time SQL blocking (Check the configured Response Time SQL)</li>
            <li>A network issue between the Spotlight Diagnostic Server and the monitored SQL server(s)</li>
            <li>A problem with the monitored SQL Server(s)</li>
        </ul>
        <p>You may want to find out what the Response Time SQL is (default "select 1") and execute that SQL from SQL Server Management Studio from the Spotlight Diagnostic Server host against one of the monitored SQL Servers exhibiting the issue.</p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Configure.flsnp" />
        <p>The Response Time SQL 
 is a user defined T-SQL batch that can be used to indicate application response time. </p>
        <table style="width: 100%;mc-table-style: url('../Resources/TableStyles/NoteTable_Blue_DoNotEdit.css');" class="TableStyle-NoteTable_Blue_DoNotEdit" cellspacing="0">
            <col class="TableStyle-NoteTable_Blue_DoNotEdit-Column-Column1" style="width: 0.3in;" />
            <col class="TableStyle-NoteTable_Blue_DoNotEdit-Column-Column1" />
            <tbody>
                <tr class="TableStyle-NoteTable_Blue_DoNotEdit-Body-Body1">
                    <td class="TableStyle-NoteTable_Blue_DoNotEdit-BodyB-Column1-Body1">
                        <p>
                            <img src="../Resources/Images/DSGStandard/Note_Info.gif" style="max-width: 90%;" />
                        </p>
                    </td>
                    <td class="TableStyle-NoteTable_Blue_DoNotEdit-BodyA-Column1-Body1">
                        <p><span class="DellDarkBlue">Note:</span> Membership of the Spotlight diagnostic administrators group is required to change 
 the SQL Statement used to measure SQL Server response time. <MadCap:xref href="../NetworkWindows/spotlightdiagnosticusergroups.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Spotlight diagnostic user groups</span>. To change the query used 
 to determine response time, see <MadCap:xref href="../Configure/dialog_sqlserverresponsetime.htm"><span style="color: #0078b6;" class="mcFormatColor">Configure | SQL Server Response Time</span></MadCap:xref>. </MadCap:xref></p>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>