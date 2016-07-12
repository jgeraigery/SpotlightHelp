---
title: Grant account permissions
summary: "Spotlight connects to the SQL Server instance using the authentication defined by SQL Server | Connection Details. Spotlight requires necessary account permissions to connect to the SQL Server instance. Typically the account will be a member of the sysadmin server role. It could be a SQL Server login (such as 'sa'). It could be the Windows account that runs the Spotlight Diagnostic Server provided that account is trusted by the SQL Server."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_connect_accountgrantpermissions.html
folder: ConnectSQLServer
---


In some environments the above may not be feasible. The following instructions are provided for these environments. Run the following SQL script (as sysadmin) to grant the required permissions to user **TrustedUser**. Note the comment lines at the end of the script and un-comment as appropriate for your environment.

## Known issues with this script

### No data on the SQL Server \| Support Services Drilldown \| Service Status page  

This script does not grant sufficient privileges to view the data on this page.

## Script to grant permissions to TrustedUser

use master

grant ALTER TRACE to TrustedUser

grant VIEW SERVER STATE to TrustedUser

grant VIEW ANY DEFINITION to TrustedUser

USE [master]

GO

CREATE USER [TrustedUser] FOR LOGIN [TrustedUser]

GO

USE [msdb]

GO

CREATE USER [TrustedUser] FOR LOGIN [TrustedUser]

GO

grant VIEW DATABASE STATE to TrustedUser

use msdb

EXECUTE sp_addrolemember

@rolename = 'SQLAgentReaderRole',

@membername = 'TrustedUser'

use msdb

EXECUTE sp_addrolemember

@rolename = 'TargetServersRole',

@membername = 'TrustedUser'



grant select on dbo.log_shipping_monitor_history_detail to TrustedUser

grant select on dbo.log_shipping_monitor_primary to TrustedUser

grant select on dbo.log_shipping_monitor_secondary to TrustedUser

grant select on dbo.log_shipping_primary_databases to TrustedUser

grant select on dbo.log_shipping_secondary_databases to TrustedUser

grant select on dbo.log_shipping_primary_secondaries to TrustedUser

grant select on dbo.log_shipping_primaries to TrustedUser

grant select on dbo.log_shipping_secondary to TrustedUser

grant select on dbo.log_shipping_secondaries to TrustedUser

grant select on dbo.sysjobs to TrustedUser

grant select on dbo.sysalerts to TrustedUser

grant select on dbo.sysjobhistory to TrustedUser

grant execute on dbo.sp_help_jobhistory to TrustedUser

grant select on msdb.dbo.syssessions to TrustedUser

grant select on msdb.dbo.sysjobactivity to TrustedUser

use master

grant EXECUTE on xp_servicecontrol to TrustedUser

grant EXECUTE on xp_enumerrorlogs to TrustedUser

grant EXECUTE on xp_readerrorlog to TrustedUser

grant EXECUTE on xp_sqlagent_enum_jobs to TrustedUser

grant execute on xp_regread to TrustedUser



declare @dbnumber int

declare @dbname sysname

declare @use nvarchar(4000)

declare @Dell_dblist table (

row int identity,

name sysname

)

insert into @Dell_dblist (name)

select name from master.dbo.sysdatabases;

set @dbnumber = @@rowcount

while @dbnumber > 0

begin

select @dbname =name from @Dell_dblist where row = @dbnumber

set @use = N'USE ' + quotename(@dbname)

+ N'CREATE USER [TrustedUser] FOR LOGIN [TrustedUser]';

exec (@use)

set @dbnumber = @dbnumber - 1

end

-----un-comment the following line for SQL Server 2008 and above.

--Grant CONTROL SERVER to TrustedUser

-----un-comment the following line for SQL Server 2012 and above.

--Grant ALTER ANY EVENT SESSION to TrustedUser

{% include links.html %}
