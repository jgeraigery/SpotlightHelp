---
title: Databases - Unavailable alarm
tags: [sqlserver_alarms]
last_updated: July 29, 2016
summary: "The Databases - Unavailable alarm becomes active when Spotlight Enterprise detects that a SQL Server database is not available for reading. Users attempting to access an unavailable database will receive an error message."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_alarm_databases_unavailable.html
id: btnDatabasesNumber of Unavailable Databases.Alarm
folder: ConnectSQLServer
---


This alarm detects unusual database statuses, including Suspect, Offline, Recovering, Loading, Restoring, Emergency Mode, and others.

## When the alarm is raised

* Determine which databases are unavailable. Check the **SQL Server \| Databases drilldown \| Databases grid**. The Status column shows which databases are unavailable.
* Take the action specified below for each unavailable database.

{% include note.html content="You can configure this alarm to ignore certain values. You can configure different alarm severities for specific databases." %}


## Common database unavailable status

Some of the more common unavailable statuses are listed below:

### Offline

Databases can only be set offline manually, using the sp_dboption procedure (or ALTER DATABASE command under SQL Server 2000). If you have Offline databases, you should check who has set the database offline, and consider using sp_dboption or ALTER DATABASE to bring the database online again.

### Loading or Restoring

Databases that are marked as Loading or Restoring are currently being restored by a RESTORE DATABASE or RESTORE LOG command. The database cannot be accessed by anyone while this is the case.

This status is also assigned to databases that have been restored using the NORECOVERY option. Specifying this parameter on a RESTORE statement tells SQL Server that there are more transaction logs to be restored, and that no access to the database is permitted until they are applied.

You should check the **SQL Server \| SQL Activity drilldown \| Sessions tab** for active sessions that are processing a RESTORE command (where the Last Command column contains Restore). If there are no sessions processing a RESTORE command, then the database is most likely unavailable because the last restore was done with the NORECOVERY keyword.

To remove Loading/Restoring status, you should complete the RESTORE process. This can involve either waiting for the active RESTORE command to complete, or restoring the remaining transaction logs. The last transaction log should be restored without the NORECOVERY keyword.

### Recovering

Databases will be Recovering (or InRecovery) for a while when SQL Server is restarted, or the database is first set online. This is the status that SQL Server uses to indicate that it is re-applying committed transactions, or removing uncommitted transactions after a SQL Server failure.

Normally, SQL Server only takes a short time to re-apply these transactions, however, if there were long-running transactions open when SQL Server ended abnormally, then it can take an extended period. The general rule is that the automatic recovery will take between 1.5 and 2 times the age of the oldest transaction (although the exact time depends on your Recovery Interval setting.) For example, if a large UPDATE statement had been running for 2 hours when SQL Server terminated unexpectedly, you can expect the automatic recovery to take between 3 and 4 hours.

Usually, the best course of action is to let SQL Server proceed with its automatic recovery. If SQL Server is stopped during its automatic recovery, the next time it starts it not only has to re-process the transactions that were in progress when the original failure occurred, but it also has to reprocess the failed automatic recovery.

In some cases, it can be beneficial to bypass the SQL Server recovery process. For example, you may not want to wait for a lengthy recovery process if you are going to drop the database as soon as it completes. See Bypassing SQL Server Recovery below for details on how to do this. Be aware that bypassing recovery can corrupt your database.

### Suspect

Databases can be Suspect if they fail SQL Server's automatic recovery. This is most common after a SQL Server restart when something goes wrong with the automatic recovery process. In some rare situations, a database can become Suspect without a SQL Server restart (if serious database corruption is detected by SQL Server). This can also happen when SQL Server runs out of disk space for the database files while performing recovery.

The first thing to do when you have a Suspect database is to check the SQL Server error log, and look for error messages indicating recovery failure or database corruption. This should give you an indication of what caused the problem.

Actions you can consider to correct a suspect database include:

* Check the SQL Server error log to determine why the database was made suspect.
* Make sure all database files are available. If any database file is unavailable when SQL Server attempts to open the database, the database is made suspect. This can happen if you have deleted or renamed a database file while SQL Server was down. It can also happen if another Windows process (such as Backup or Virus Scanning software) is using a database file when SQL Server tries to open it. If this is the case, once the database file is available again, use the sp_resetstatus stored procedure (as documented in Books Online) to reset the database status, and then restart SQL Server to initiate recovery.
* If the Suspect status was caused by a full disk during recovery, you should free up disk space and use the sp_resetstatus stored procedure (as documented in Books Online) to reset the database status. SQL Server should then be restarted to initiate recovery.
* If the Suspect status was caused by a full disk during recovery, and you cannot free up space on existing database disks, you should add a new data or log file on a different disk that has free space available. For SQL Server 2000, you can use the sp_add_data_file_recover_suspect_db or sp_add_log_file_recover_suspect_db to achieve the same results.
* Restore the database from your last full database backup, and then restore all transaction log backups taken since that point.

In most cases, the correct action to take for a suspect database is to restore from your last good full database backup, and transaction logs.

If restoring is not an option for you and you cannot fix the problem using the tips above, there are a few more options you can attempt. These will not work in all cases, but sometimes they may give you enough to extract data from the corrupt database that cannot be retrieved any other way.

{% include note.html content="These procedures should only be considered as a last resort. They are not supported by Microsoft or Quest, and could irretrievably corrupt your databases and data." %}

### Using Emergency Mode

Emergency mode is a special status that can be set on an individual database that causes SQL Server to skip recovery for that one database.  In some cases, this can make the corrupt database available in order to extract data that cannot be retrieved any other way.

#### Allow direct updates to your system tables by running the following SQL:

```
sp_configure 'allow updates', 1
go
reconfigure with override
go
```

#### Put your Suspect in Emergency mode:

```
update master..sysdatabases
set status = 32768
where name = 'YourDBName'
```

This causes SQL Server to skip the recovery of this database, and will prevent the database being made suspect. However, the database may contain partially-complete transactions, and there may be inconsistencies between data and indexes (logical and physical corruptions). You should not perform any database changes or updates when SQL Server is started this way.

### Bypassing SQL Server Recovery

Another high risk option to access a suspect database is to start SQL Server with Trace Flag 3608. This trace flag causes SQL Server to skip its automatic recovery process on ALL DATABASES when it starts. Again, this may be enough to allow you to extract data that cannot be retrieved any other way.

* Use the sp_resetstatus stored procedure (as documented in Books Online) to reset the database status of any Suspect databases.
* Stop SQL Server, and then start it from a command line with Trace Flag 3608 and minimal startup (sqlservr.exe -f -c -T3608 ). This causes SQL Server to skip its automatic recovery at startup, and will prevent the database being made suspect. However, the database may contain partially-complete transactions, and there may be inconsistencies between data and indexes (logical and physical corruptions). You should not perform any database changes or updates when SQL Server is started this way. See http://support.microsoft.com/kb/q224071/ for more information.

With both Emergency Mode and Bypassing SQL Server Recovery, you may then be able to extract your data using BCP.EXE and/or script the database to get the latest database definitions.  This can then be loaded into a new database using BCP.EXE or BULK INSERT.  Be aware that the extracted data may not be complete.

## Emergency Mode

Emergency Mode is a special status that can be manually set for an individual database to cause SQL Server to skip recovery for that one database. See Using Emergency Mode above for more details.

Databases can be set out of Emergency Mode only by manually updating the master..sysdatabases table directly. This can be done using SQL similar to the following:

```
update master..sysdatabases
set status = status ^ 32768
where name = 'YourDBName'
```

{% include tip.html content="The database may still contain corrupt data, and a full database restore is recommended." %}

{% include links.html %}
