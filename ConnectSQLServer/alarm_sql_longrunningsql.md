<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:lastBlockDepth="12" MadCap:lastHeight="801" MadCap:lastWidth="818">
    <head>
        <link href="../Resources/TableStyles/NoteTable_Blue_DoNotEdit.css" rel="stylesheet" MadCap:stylesheetType="table" />
        <link href="../Resources/TableStyles/RuledTableWithoutHeading_DoNotEdit.css" rel="stylesheet" MadCap:stylesheetType="table" /><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="SQL - Long Running SQL alarm;alarms:SQL - Long Running SQL" />SQL - Long Running SQL alarm</h1>
        <MadCap:snippetBlock src="../Resources/Snippets/Requirements/SQLServer2000NoNote.flsnp" MadCap:conditions="SoSSE_Publication.Online Help" />
        <p>The <b>SQL - Long Running SQL</b> 
 alarm is raised when SQL has been running longer than a configured 
 time. Because the (configured time) is 
 unique to each environment, the SQL - Long Running SQL alarm, by default, is 
 not configured.</p>
        <table style="width: 80%;caption-side: top;mc-table-style: url('../Resources/TableStyles/RuledTableWithoutHeading_DoNotEdit.css');" class="TableStyle-RuledTableWithoutHeading_DoNotEdit" cellspacing="0">
            <col class="TableStyle-RuledTableWithoutHeading_DoNotEdit-Column-Column1" />
            <tbody>
                <tr class="TableStyle-RuledTableWithoutHeading_DoNotEdit-Body-Body1">
                    <td class="TableStyle-RuledTableWithoutHeading_DoNotEdit-BodyA-Column1-Body1">
                        <p class="ScenarioHeading">Scenario</p>
                        <p>You work in an OLTP environment and often get complaints 
 about delays in server processing. You want to be notified when SQL on 
 a particular server is running longer than expected so you can investigate 
 what is causing the delay. You configure Spotlight to raise a medium severity 
 alarm when it detects SQL running for longer than five minutes. When the SQL - Long Running SQL alarm is raised, you use the Sessions page to view 
 the long running SQL.</p>
                    </td>
                </tr>
            </tbody>
        </table>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <ul>
            <li>Open the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_sqlactivity.htm" MadCap:conditions="SoSSE_Publication.Online Help"><span style="color: #0078b6;" class="mcFormatColor">SQL Server | SQL Activity Drilldown</span></MadCap:xref><span style="color: #0078b6;" class="mcFormatColor" MadCap:conditions="SoSSE_Publication.Getting&#160;Started Guide">SQL Server | SQL Activity Drilldown</span> | <b>Sessions</b> 
 page. View the long running SQL.</li>
        </ul>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Configure.flsnp" />
        <ol>
            <li>
                <p>Click <b>Configure |&#160;Alarms</b>.</p>
                <p>
                    <img src="../Images/tb_config_alarms.png" />
                </p>
            </li>
            <li>
                <p>To apply the alarm configuration to a connection, select the connection from the drop down list. The templates you have created are also selectable from the drop down list. Select a template to modify. Note that the Spotlight Factory Settings Template cannot be modified. To create a template, select an existing template or connection from the list to form the basis of the new template and click <b>Save as Template</b>.</p>
            </li>
            <li>Locate the alarm <b>SQL - Long Running SQL</b>. Double click on the alarm to configure the settings.<ol><li>Clear the <b>Factory Settings</b> control for the SQL - Long Running SQL alarm and so you can modify the settings for this alarm.</li><li><p>Click <b>Add 
 Severity</b> and select a severity.</p><p class="ScenarioPara"><b>Scenario:</b> 
 Click <b>Add Severity</b> and select 
 <b>Medium</b>.</p></li><li>Select the check 
 box of the new severity.</li><li>Copy and paste the text in the Description cell
 from the Normal severity to the new 
 severity.</li><li><p>In the Start 
 cell, type the duration in seconds, of how long the SQL should run for 
 before the alarm is raised.</p><p class="ScenarioPara"><b>Scenario:</b> 
 In the Start cell, type 300 .</p><table style="width: 100%;mc-table-style: url('../Resources/TableStyles/NoteTable_Blue_DoNotEdit.css');" class="TableStyle-NoteTable_Blue_DoNotEdit" cellspacing="0"><col class="TableStyle-NoteTable_Blue_DoNotEdit-Column-Column1" style="width: 0.3in;" /><col class="TableStyle-NoteTable_Blue_DoNotEdit-Column-Column1" /><tbody><tr class="TableStyle-NoteTable_Blue_DoNotEdit-Body-Body1"><td class="TableStyle-NoteTable_Blue_DoNotEdit-BodyB-Column1-Body1"><p><img src="../Resources/Images/DSGStandard/Note_Info.gif" style="max-width: 90%;" /></p></td><td class="TableStyle-NoteTable_Blue_DoNotEdit-BodyA-Column1-Body1"><p><span class="DellDarkBlue">TIP:</span> You can also configure alarm severities using keys. In the SQL - Long Running SQL alarm, the key is the SPID. <MadCap:conditionalText MadCap:conditions="SoSSE_Publication.Online Help"><MadCap:xref href="../AlarmsDialog/configure_alarm.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Configure an alarm</span>.</MadCap:xref></MadCap:conditionalText><MadCap:conditionalText MadCap:conditions="SoSSE_Publication.Getting&#160;Started Guide">See "Configure an alarm" in the online help for more information.</MadCap:conditionalText></p></td></tr></tbody></table></li><li>Click OK to close the dialog for the SQL - Long Running SQL&#160;alarm.</li></ol></li>
            <li>From the dialog to Configure Alarms, you can continue to configure more alarms for the selected connection / template. When you have finished you may choose to apply the configuration(s) to other connections or save the configuration(s) to a template.</li>
            <li>Click OK to save the alarm configuration(s) for the selected connection or template.</li>
        </ol>
    </body>
</html>