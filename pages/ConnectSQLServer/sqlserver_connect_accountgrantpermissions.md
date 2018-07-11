---
title: Grant account permissions
last_updated: July 29, 2016
summary: "In some environments it may not be feasible for Spotlight to connect to the SQL Server instance server with an account that is a member of the sysadmin server role. The following instructions are provided for these environments. Note that there are known issues with this procedure as documented below."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_connect_accountgrantpermissions.html
folder: ConnectSQLServer
---


## SQL Server 2012 and above: Ensure the TrustedUser default database is set to master

For SQL Server 2012 and above databases, follow these instructions to ensure the SQL Server account default database is set to master.

From SSMS (SQL Server Management Studio): **Security \| Logins \| 'Monitoring account' \| Properties \| General \| Default database** select **master** as the default database.

## Run this script to grant permissions to TrustedUser

Run the following SQL script (as sysadmin) to grant the required permissions to user **TrustedUser**. Note the comment lines at the end of the script and un-comment as appropriate for your environment.

```
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

declare @Quest_dblist table (

row int identity,

name sysname

)

insert into @Quest_dblist (name)

select name from master.dbo.sysdatabases;

set @dbnumber = @@rowcount

while @dbnumber > 0

begin

select @dbname =name from @Quest_dblist where row = @dbnumber

set @use = N'USE ' + quotename(@dbname)

+ N'CREATE USER [TrustedUser] FOR LOGIN [TrustedUser]';

exec (@use)

set @dbnumber = @dbnumber - 1

end

-----un-comment the following line for SQL Server 2008 and above.

--Grant CONTROL SERVER to TrustedUser

-----un-comment the following line for SQL Server 2012 and above.

--Grant ALTER ANY EVENT SESSION to TrustedUser
```

### Known issues with this script

The following monitoring functions require sysadmin privileges; hence have known issues when using the script:

* Mirroring
* Number of virtual log files (VLFs)
* Jobs
* The SQL Server \| Databases drilldown \| Open transactions count
* The SQL Server \| Databases drilldown \| Indexes page \| Index Statistics Summary page
* The SQL Server \| Support Services drilldown \| Service Status page - shows no data

{% include links.html %}
