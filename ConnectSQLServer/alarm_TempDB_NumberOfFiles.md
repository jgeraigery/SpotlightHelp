<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:lastBlockDepth="6" MadCap:lastHeight="272" MadCap:lastWidth="735">
    <head>
        <link href="../Resources/TableStyles/NoteTable_Blue_DoNotEdit.css" rel="stylesheet" MadCap:stylesheetType="table" /><title></title>
    </head>
    <body>
        <h1>Tempdb Number of Files</h1>
        <p>This alarm is raised when the number of files in the Tempdb database is less than the number of processors and the SQL Server is experiencing contention on Tempdb.</p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <p>To ease contention consider increasing the number of Tempdb files to one Tempdb file per processor. Thus increasing the number of Tempdb files increases the number of physical I/O operations that SQL Server can push to the disk at any one time. The more I/O that SQL Server can push down to the disk level, the faster the database will run.</p>
        <p style="font-weight: normal;">It is important to configure the files at the same initial size and with the same growth settings. That way, SQL Server will manage an even distribution of data across the files.</p>
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
                        <p><span class="DellDarkBlue">Note:</span> This alarm is applicable to SQL Server 2005 and above.</p>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>