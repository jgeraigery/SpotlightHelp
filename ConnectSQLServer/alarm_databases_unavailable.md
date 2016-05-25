---
title: ﻿Clusters - Failed Over Alarm
keywords: mydoc
summary: "The Clusters - Failed Over alarm is raised when a cluster fails over."
sidebar: c_sqlserver_sidebar
toc: false
permalink: /sqlserver_alarm_clusters_failedover/
---


﻿<?xml version="1.0" encoding="utf-8"?>
<html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" MadCap:ignoredWords="AutoShrink;SHRINKDATABASE;DBName;node(s;disk(s;Freespace;LazyWriter;KB;files(s;file(s;Ctrl;database(s;index(es;AutoGrow;MaxSize;table(s;getpage;timeout;Min;SQLServerAgent;MSDTC;MSSQLServerOLAPService;MyComputer;VLF;Timeouts;timeouts;sqlservr;tempdb;SPID;dbcc;SMP;login;Autogrow;AutoGrow=Yes;MaxSize=Unlimited;Errorlog;MSCS;diskperf;SPIDs;Config;Adhoc-SQL;CTRL;SystemDB;offline;spid;Runnable;Optimizer;VLFs;Inc;runnable;IO;Mem;Login;TranCount;NetBIOS;perfmon;firewalls;JEDI;Mozilla;C.F.R.;MPL;www.mozilla.org;C;SNMP;concurrency;asynchronously;datatype;indid;Indid;sa;Sa;SYSADMIN;MAPI;Disk(s;dbname;Offline;MSSQLServer;parameterizing;Adhoc;LogWriter;IntentShared;IntentExclusive;adhoc;RowModCtr;sp_prepare;sp_cursorprepare;auto-parameterized;user-parameterized;Misc;ErrorLog;freeware;group(s;ungroup;sysadmin;QuestWorkDatabase;DTC;system(s;middleware;homepage;Datacenter;XP;rowset;autoclose;tran;logins;wildcards;AutoGrow=No;Tran;AutoGrowth;DDL;DML;sp_recompile;ZACH;Trans;Cmds;AllowViewConflictsCmd;AllowReInitCmd;OLE-DB;osql.exe.;y;situation(s;MDAC;www.microsoft.com;sp_dboption;NORECOVERY;Cmd;InRecovery;errorlog;sp_resetstatus;sp_add_data_file_recover_suspect_db;sp_add_log_file_recover_suspect_db;sp_configure;reconfigure;sysdatabases;YourDBName;support.microsoft.com;kb;sqlservr.exe;BCP.EXE" MadCap:timeEstimate="0" MadCap:priority="0" MadCap:status="In Progress" MadCap:lastBlockDepth="8" MadCap:lastHeight="2441" MadCap:lastWidth="742">
    <head>
        <link href="../Resources/TableStyles/NoteTable_Blue_DoNotEdit.css" rel="stylesheet" MadCap:stylesheetType="table" /><title></title>
    </head>
    <body>
        <h1>
            <MadCap:keyword term="databases:Unavailable alarm;alarms:Databases - Unavailable" />Databases - Unavailable Alarm</h1>
        <p>The <b>Databases - Unavailable </b>alarm becomes active
 when <MadCap:variable name="Primary.ProductNameLong" /> detects that a SQL Server database
 is not available for reading.&#160;Users attempting to access an unavailable
 database will receive an error message.</p>
        <p>This alarm detects unusual database statuses, including <b>Suspect</b>,
 <b>Offline</b>, <b>Recovering</b>, <b>Loading</b>, <b>Restoring</b>, <b>Emergency Mode</b>, and
 others.</p>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Raised.flsnp" />
        <ul>
            <li>Determine
 which databases are unavailable.&#160;Check the <b>Databases</b>
 grid on the <MadCap:xref href="../Drilldowns/drilldown_sqlserver_databases.htm" target="" title="" alt="">Databases Drilldown</MadCap:xref>. The <b>Status </b>column
 shows which databases are unavailable. </li>
            <li>Take the action specified
 below for each unavailable database.</li>
        </ul>
        <MadCap:snippetBlock src="../Resources/Snippets/SoSSE/Alarm_Title_Configure.flsnp">
        </MadCap:snippetBlock>
        <ul>
            <li class="Note">You can configure  this alarm to ignore certain values. <MadCap:xref href="../AlarmsDialog/configure_alarm_ignorevalues.htm" class="ForMoreInfo_Heading">For more information, see <span style="color: #0078b6;" class="mcFormatColor">Do not alarm for certain values</span>.</MadCap:xref></li>
        </ul>
        <ul>
            <li class="Note">You can configure different alarm severities for specific  databases. <MadCap:snippetText src="../Resources/Snippets/SoSSE/Alarm_SeeKeyedAlarmsref.flsnp" /></li>
        </ul>
        <h2>Common database unavailable status</h2>
        <p>Some of the more common unavailable statuses are listed below:</p>
        <h4>Offline</h4>
        <p>Databases can only be set offline manually, using the <b>sp_dboption
 </b>procedure (or <b>ALTER DATABASE </b>command under SQL
 Server 2000).&#160;If you have <b>Offline</b>
 databases, you should check who has set the database offline, and consider
 using <b>sp_dboption</b> or <b>ALTER
 DATABASE</b> to bring the database online again.</p>
        <h4>Loading or Restoring</h4>
        <p>Databases that are marked as <b>Loading </b>or
 <b>Restoring </b>are currently being restored by a <b>RESTORE
 DATABASE</b> or <b>RESTORE LOG</b>
 command.&#160;The database cannot be accessed by anyone while this is
 the case.</p>
        <p>This status is also assigned to databases that have been
 restored using the <b>NORECOVERY</b> option.&#160;Specifying
 this parameter on a <b>RESTORE</b> statement tells SQL Server
 that there are more transaction logs to be restored, and that no access
 to the database is permitted until they are applied.</p>
        <p>You should check the <b>Sessions</b> tab on the <b>SQL Activity</b> drilldown
 for active sessions that are processing a <b>RESTORE </b>command
 (where the <b>Last Command </b>column contains <b>Restore</b>).
 If there are no sessions processing a <b>RESTORE</b>
 command, then the database is most likely unavailable because the last
 restore was done with the <b>NORECOVERY</b>
 keyword.</p>
        <p>To remove <b>Loading/Restoring </b>status, you
 should complete the <b>RESTORE</b> process.&#160;This
 can involve either waiting for the active <b>RESTORE</b>
 command to complete, or restoring the remaining transaction logs. The
 last transaction log should be restored without the <b>NORECOVERY</b>
 keyword.</p>
        <h4>Recovering</h4>
        <p>Databases will be <b>Recovering </b>(or <b>InRecovery</b>)
 for a while when SQL Server is restarted, or the database is first set
 online.&#160;This is the status that SQL Server uses to indicate that
 it is re-applying committed transactions, or removing uncommitted transactions
 after a SQL Server failure.</p>
        <p>Normally, SQL Server only takes a short time to re-apply
 these transactions, however, if there were long-running transactions open
 when SQL Server ended abnormally, then it can take an extended period.&#160;The
 general rule is that the automatic recovery will take between 1.5 and
 2 times the age of the oldest transaction (although the exact time depends
 on your <b>Recovery Interval </b>setting.)&#160;For example,
 if a large <b>UPDATE</b> statement had
 been running for 2 hours when SQL Server terminated unexpectedly, you
 can expect the automatic recovery to take between 3 and 4 hours.</p>
        <p>Usually, the best course of action is to let SQL Server proceed
 with its automatic recovery.&#160;If SQL Server is stopped during its
 automatic recovery, the next time it starts it not only has to re-process
 the transactions that were in progress when the original failure occurred,
 but it also has to reprocess the failed automatic recovery.</p>
        <p>In some cases, it can be beneficial to bypass the SQL Server
 recovery process. For example, you may not want to wait for a lengthy
 recovery process if you are going to drop the database as soon as it completes.
 See <b>Bypassing SQL Server Recovery </b>below for details on
 how to do this.&#160;Be aware that bypassing recovery can corrupt your
 database.</p>
        <h4>Suspect</h4>
        <p>Databases can be <b>Suspect </b>if they fail SQL
 Server's automatic recovery.&#160;This is most common after a SQL Server
 restart when something goes wrong with the automatic recovery process.&#160;In
 some rare situations, a database can become <b>Suspect</b>
 without a SQL Server restart (if serious database corruption is detected
 by SQL Server). This can also happen when SQL Server runs out of disk
 space for the database files while performing recovery.</p>
        <p>The first thing to do when you have a <b>Suspect</b>
 database is to check the SQL Server error log, and look for error messages
 indicating recovery failure or database corruption.&#160;This should give
 you an indication of what caused the problem.</p>
        <p>Actions you can consider to correct a suspect database include:</p>
        <ul>
            <li>Check the
 SQL Server error log to determine why the database was made suspect. </li>
            <li>Make sure all database
 files are available.&#160;If any database file is unavailable when SQL
 Server attempts to open the database, the database is made suspect.&#160;This
 can happen if you have deleted or renamed a database file while SQL Server
 was down.&#160;It can also happen if another Windows process (such as
 Backup or Virus Scanning software) is using a database file when SQL Server
 tries to open it.&#160;If this is the case, once the database file is
 available again, use the <b>sp_resetstatus </b>stored procedure
 (as documented in Books Online) to reset the database status, and then
 restart SQL Server&#160;to initiate recovery.</li>
            <li>If the <b>Suspect</b>
 status was caused by a full disk during recovery, you should free up disk
 space and use the <b>sp_resetstatus </b>stored procedure (as
 documented in Books Online) to reset the database status.&#160;SQL Server
 should then be restarted to initiate recovery.</li>
            <li>If the <b>Suspect</b>
 status was caused by a full disk during recovery, and you cannot free
 up space on existing database disks, you should add a new data or log
 file on a different disk that has free space available.&#160;For SQL Server
 2000, you can use the <b>sp_add_data_file_recover_suspect_db </b>or
 <b>sp_add_log_file_recover_suspect_db</b> to achieve the same
 results.</li>
            <li>Restore the database
 from your last full database backup, and then restore all transaction
 log backups taken since that point.</li>
        </ul>
        <p>In most cases, the correct action to take for a suspect database
 is to restore from your last good full database backup, and transaction
 logs.</p>
        <p>If restoring is not an option for you and you cannot fix
 the problem using the tips above, there are a few more options you can
 attempt. These will not work in all cases, but sometimes they&#160;may
 give you enough to extract data from the corrupt database that cannot
 be retrieved any other way.</p>
        <p class="Caution"><b>Note:</b> These procedures
 should only be considered as a last resort.&#160;They&#160;are&#160;not
 supported by Microsoft or Dell, and could irretrievably corrupt
 your databases and data.</p>
        <p><span class="QuestBlue">Using Emergency Mode:</span> Emergency
 mode is a special status that can be set on an individual database that
 causes SQL Server to skip recovery for that one database.&#160; In some
 cases, this can make the corrupt database available in order to extract
 data that cannot be retrieved any other way.</p>
        <ul>
            <li>
                <p>Allow direct updates to your system tables by running the following SQL:</p>
                <p><b>sp_configure 'allow updates', 1</b>
                    <br /><b>go</b>
                    <br /><b>reconfigure with override</b>
                    <br /><b>go</b>
                </p>
            </li>
        </ul>
        <ul>
            <li>
                <p>Put your <b>Suspect</b>  in <b>Emergency</b> mode:</p>
                <p><b>update master..sysdatabases</b>
                    <br /><b>set status = 32768</b>
                    <br /><b>where name = 'YourDBName'</b>
                </p>
                <p>This causes SQL Server
 to skip the recovery of this database, and will prevent the database being
 made suspect. However, the&#160;database may contain partially-complete
 transactions, and there may be inconsistencies between data and indexes
 (logical and physical corruptions).&#160;You should not perform any database
 changes or updates when SQL Server is started this way.</p>
            </li>
        </ul>
        <h4>Bypassing SQL Server Recovery</h4>
        <p>Another high risk option to access a suspect database is to start SQL
 Server with <b>Trace Flag 3608</b>.&#160;This
 trace flag causes SQL Server to skip its automatic recovery process on
 ALL DATABASES when it starts. Again, this may be enough to allow you to
 extract data that cannot be retrieved any other way.</p>
        <ul>
            <li>Use the <b>sp_resetstatus
 </b>stored procedure (as documented in Books Online) to reset the
 database status of any <b>Suspect</b>
 databases.</li>
            <li>Stop SQL Server,
 and then start it from a command line with <b>Trace
 Flag 3608</b> and minimal startup (<b>sqlservr.exe -f
 -c -T3608</b>
 ). This causes SQL Server to skip its automatic recovery at startup, and
 will prevent the database being made suspect. However, the&#160;database
 may contain partially-complete transactions, and there may be inconsistencies
 between data and indexes (logical and physical corruptions).&#160;You
 should not perform any database changes or updates when SQL Server is
 started this way. See <a href="http://support.microsoft.com/kb/q224071/" target="_blank">http://support.microsoft.com/kb/q224071/</a> for more information.</li>
        </ul>
        <p>With both <b>Emergency Mode </b>and <b>Bypassing
 SQL Server Recovery</b>, you may then be able to extract your data
 using <b>BCP.EXE</b> and/or script the
 database to get the latest database definitions.&#160; This can then be
 loaded into a new database using <b>BCP.EXE</b>
 or <b>BULK INSERT</b>.&#160; Be aware
 that the extracted data may not be complete.</p>
        <h4>Emergency Mode</h4>
        <p><b>Emergency Mode</b> is
 a special status that can be manually set for an individual database to
 cause SQL Server to skip recovery for that one database. See <b>Using
 Emergency Mode</b> above for more details.</p>
        <p>Databases can be set out of <b>Emergency
 Mode</b> only by manually updating the <b>master..sysdatabases</b>
 table directly. This can be done using SQL similar to the following:</p>
        <p><b>update master..sysdatabases
 <br />set status = status ^ 32768 <br />where name = 'YourDBName'</b>
        </p>
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
                        <p><span class="DellDarkBlue">Note:</span> The database may still
 contain corrupt data, and a full database restore is recommended.</p>
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
