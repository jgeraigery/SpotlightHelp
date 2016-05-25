<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:lastBlockDepth="5" MadCap:lastHeight="352" MadCap:lastWidth="758">
    <head>
        <link href="../Resources/TableStyles/RuledTableWithHeading_DoNotEdit.css" rel="stylesheet" MadCap:stylesheetType="table" /><title></title>
    </head>
    <body>
        <h1>Tempdb Contention</h1>
        <p>This alarm is raised when Tempdb is experiencing contention on:</p>
        <ul>
            <li>Page free space (PFS)</li>
            <li>Global allocation map (GAM)</li>
            <li> Shared global allocation map (SGAM)</li>
        </ul>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <p>Review the balance of logical processors to Temp data files.</p>
        <table style="width: 100%;margin-left: 0;margin-right: auto;caption-side: top;mc-table-style: url('../Resources/TableStyles/RuledTableWithHeading_DoNotEdit.css');" class="TableStyle-RuledTableWithHeading_DoNotEdit" cellspacing="0">
            <col class="TableStyle-RuledTableWithHeading_DoNotEdit-Column-Column1" />
            <col class="TableStyle-RuledTableWithHeading_DoNotEdit-Column-Column1" />
            <thead>
                <tr class="TableStyle-RuledTableWithHeading_DoNotEdit-Head-Header1">
                    <th class="TableStyle-RuledTableWithHeading_DoNotEdit-HeadE-Column1-Header1">Logical Processors</th>
                    <th class="TableStyle-RuledTableWithHeading_DoNotEdit-HeadD-Column1-Header1">Tempdb data files</th>
                </tr>
            </thead>
            <tbody>
                <tr class="TableStyle-RuledTableWithHeading_DoNotEdit-Body-Body1">
                    <td class="TableStyle-RuledTableWithHeading_DoNotEdit-BodyE-Column1-Body1">Up to 8 logical processors:-</td>
                    <td class="TableStyle-RuledTableWithHeading_DoNotEdit-BodyD-Column1-Body1">Consider the same number of Tempdb data files as logical processors.</td>
                </tr>
                <tr class="TableStyle-RuledTableWithHeading_DoNotEdit-Body-Body1">
                    <td class="TableStyle-RuledTableWithHeading_DoNotEdit-BodyB-Column1-Body1">More than 8 logical processors:-</td>
                    <td class="TableStyle-RuledTableWithHeading_DoNotEdit-BodyA-Column1-Body1">Consider 8 Tempdb data files.</td>
                </tr>
            </tbody>
        </table>
        <p> If contention continues then increase the number of data files by multiples of 4 (up to the number of logical processors) until the contention is reduced to acceptable levels or make changes to the workload/code.</p>
    </body>
</html>