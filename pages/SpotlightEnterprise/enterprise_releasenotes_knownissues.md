---
title: Known Issues with this Release
keywords: release notes
summary: "The following is a list of issues, including those attributed to third-party products, known to exist at the time of release."
sidebar: p_enterprise_sidebar
permalink: enterprise_releasenotes_knownissues.html
folder: SpotlightEnterprise
---

## General known issues

Known Issue | Issue ID
------------|---------
If the Spotlight Client looses connection to the Spotlight Diagnostic Server then after a period of days the Spotlight Client will develop a minor memory leak. <br><br>*Workaround:* Restart the Spotlight Client. | 5433
The Spotlight Client can experience performance issues (opening the home page, acknowledging and snoozing alarms) when a large number of alarms are raised against the one connection. | 2651
Manual refresh is required on some drilldowns. Right click the data in the grid and select **Restore Default Settings \| Restore**. The grid shows "Loading". Click Refresh to populate the grid. | 11333 <br><br> 11406


## known issues with installation and upgrade

Known Issue | Issue ID
------------|---------
**Installing other Spotlights.** Do not install other Spotlights into the Spotlight Enterprise folder. You will be unable to run Spotlight Enterprise if you do this. When installing other Spotlights you must install them into a different folder. | N/A
**Remote installation.** Remote installation of Spotlight Enterprise fails if the user has both a domain account and a local account with the same user name. | N/A


## known issues with the Spotlight Diagnostic Server

Known Issue | Issue ID
------------|---------
**Federation.** If you remove and then re-add a Spotlight Diagnostic Server to the federation, the Spotlight Connections from the "re-added" Spotlight Diagnostic Server will display in the Spotlight Client as if disabled (color gray). <br><br>*Workaround:* Restart the Spotlight Client. | 5432
**System time changes.** Stop the Diagnostic Server service before changing the system time on the Diagnostic Server machine. | N/A
**Moving a Diagnostic Server.** If you want to move your Diagnostic Server to a different host machine and continue to use the current Spotlight Statistics Repository, you will not be able to report on data collected across the original and moved Diagnostic Servers. Contact Quest Support for assistance if you want to report on data collected by the original Diagnostic Server after the move. | 4178
**Renaming the Diagnostic Server.** The Diagnostic Server host cannot be renamed without reinstalling the Diagnostic Server. To conserve configuration and history, migrate the Diagnostic Server to another host before the machine is renamed. | 3052
**Diagnostic Server user privileges.** The minimum Windows privilege level required to run the Diagnostic Server is Power User. During runtime, the Diagnostic Server requires write access to folders in the install directory. Without the appropriate privileges, the Diagnostic Server cannot run. | 206558



## known issues using playback

Known Issue | Issue ID
------------|---------
**History Browser and Playback mode.** Playback data is collected at scheduled intervals, in response to some alarms, and also while viewing a drilldown using the Spotlight client. This means that history data may not be available for a drilldown in Playback mode. To change the rate at which data is collected, go to **Configure \| Scheduling**. | N/A



## known issues using the Spotlight Statistics Repository

Known Issue | Issue ID
------------|---------
**Documentation of the Collections used by Reports** - All reports source their data from the collections stored in the Spotlight Statistics Repository. The direct relationship between report component and spotlight collection is documented in the Spotlight help for a subset of the available reports. | 5258
**Unable to select connections for views and reports** - The Spotlight Statistics Repository may have corrupted on upgrade. Perhaps connection to the Spotlight Statistics Repository was lost during creation; leaving the database in an inconsistent state. <br><br> *Workaround* - Drop the Spotlight Statistics Repository database. From the Spotlight Client, Configure \| Diagnostic Server \| Configure the Spotlight Statistics Repository to create a new Spotlight Statistics Repository. | 5216
**Collection scheduling and Reporting and Trending.** Scheduling a collection to run at different time periods for two or more monitored servers can cause gaps in the Reporting and Trending charts for multi-server views. | 6362
**Storing statistics in the Spotlight Statistics Repository.** The Store statistics in the Spotlight Statistics Repository option applies to both the SQL Server connection and its equivalent Windows connection. If you change this option for a SQL Server connection, the change is also applied to the equivalent Windows connection. | N/A



## known issues configuring Spotlight

Known Issue | Issue ID
------------|---------
**Planned Outages** - Where the Spotlight Client is installed on a Windows 2008 Server VM - The Planned Outage dialog disappears on Configure \| Planned Outage \| Add. <br><br> *Workaround:* Apply patch to .NET 4 - Software Update KB2468871v2 <br><br> *See also own Known issues monitoring SQL Server connections 3606.* | 3606
**Configuring Alarms and Alarm Actions** - blank text boxes for collecting additional data and alarm action rule description. <br><br> *Workaround:* Either disable Internet Explorer Enhanced Security or add the site "about:security_Spotlight.exe" to the trusted sites in Internet Explorer. | 2553
**Spotlight Alarm Actions** - The links in Alarm Actions might not work when Internet Explorer Enhanced Security Configuration is enabled. | 2893
**Spotlight Alarm Actions** does not have an action to kill a block process. <br><br> *Workaround:* Write a SQL Query to return the SPID and kill the process; put the SQL into the Execute a SQL Script action. | 2669
**Unable to send email** - This is a known issue under the following circumstances <br><br> Symantec Endpoint Protection is installed on the Spotlight Diagnostic Server and <br> The Spotlight Diagnostic Server is installed on a 64 bit machine and <br> The Spotlight Diagnostic Server installation is 64-bit. <br><br> *Workaround:* "disable the Internet Email Auto-Protect option" in Symantec Endpoint Protection. See also: <br> http://www.symantec.com/business/support/index?page=content&id=TECH95093 and <br> http://www.symantec.com/connect/forums/sep-121-internet-email-auto-protect-and-ccnet-mail-issues | 2266
**Spotlight Cloud** - On the Configure \| Spotlight Cloud page the links to "Read more" and "Register now" are missing when Microsoft Windows is configured to run in "Windows Classic" mode. <br><br> The links open the web site: https://www.spotlightessentials.com | 2922
**Cap on collections.** To limit Spotlight's load and memory consumption, a cap of 10000 rows is placed on most collections. To modify this cap, edit the following text in file ..\agent\bin\SpotlightDiagnosticServer.ini: <br><br> "-Dcom.quest.adk.rowLimit=10000" | 11685



## Monitoring Connections

### known issues monitoring SQL Server Analysis Services

Known Issue | Issue ID
------------|---------
GMT Time Zone: The Diagnostic Server shows the wrong time. The Activity drilldown, Connections page may show the wrong time in the GMT Time Zone by incorrectly adjusting for DST. | 10433



### known issues monitoring SQL Server

Known Issue | Issue ID
------------|---------
**Home Page** - An unexpected error occurs the first time the SQL Server home page is opened in the Spotlight client session. <br><br> \+ Performance Health / Wait Events / Workload Analysis - These drilldowns show no data. <br><br> *Workaround:* Apply patch to .NET 4 - Software Update KB2468871v2 <br><br> See also own Known issues configuring Spotlight 3606. | 3606
**SQL Server 2012 and above** - Spotlight does not support Analysis Services in Tabular and Sharepoint modes. | .
**Workload Analysis drilldown** - SQL Server 2012 and above - When monitoring a failover cluster the Physical Reads value is 0 / No Data. | 3688
**SQL Server 2012 and SQL Server 2008 R2** - "Using dbghelp.dll version 4.0.5" entries in the SQL Server Error Log. The source of these entries can be traced back to a known issue (Microsoft) when a statement or job executes the sys.fn_xe_file_target_read_file stored procedure. Refer to http://support.microsoft.com/kb/2878139 <br><br> The Spotlight SQL Server \| Performance Health feature uses XEvents sessions which may execute the sys.fn_xe_file_target_read_file stored procedure. | 2927
In the SQL Server Error Log, entries "SQL Trace was started" and "SQL Trace was stopped." repeat every 10 minutes while Spotlight is monitoring the connection. These entries are added by Microsoft; Spotlight Enterprise uses SQL Trace to monitor for deadlocks. | 3582
**Monitoring SQL Server 2008 RTM.** The Deadlocks page (SQL Activity drilldown) may not show data when monitoring a SQL Server 2008 RTM database. <br><br> *Workaround:* Upgrade to SQL Server 2008 SP1 | 7495
**Access errors when connecting to SQL Server 2005.** If an access error related to xp_cmdshell occurs and the user changes the SQL Server configuration to allow access to xp_cmdshell, the SQL Server documentation states that you must disconnect and reconnect. To disconnect in Spotlight Enterprise, you must disable monitoring and enable monitoring for that SQL Server. <br><br>In the Spotlight Browser, right-click the SQL Server connection and select Properties. On the Monitoring page, clear the Monitor this server option and click OK. Open the Monitoring page again and select Monitor this server and then click OK. | N/A
**SQL Server 2000** - The display of long SQL queries is truncated when click on the SPID in the SQL Activity \| Sessions drilldown. | 1273
**Data sourced from SQL Server 2000 performance counters may be incorrect.** Spotlight may display an incorrect size or procedure cache hit rate for SQL Server 2000. This does not apply to SQL Server 2005 or 2008. | 3057
Unexpected error **"Could not load file or assembly 'System.Cor, Version=2.0.5.0…"** on first time connecting to a SQL Server instance. <br><br> *Solution:* Install the following patch to the .NET framework (http://support.microsoft.com/kb/2468871) | 2764
The collections Fragmentation by Index and Fragmentation Overview can adversely impact the performance of monitored SQL Servers. If this is an issue then use Configure \| Scheduling to reduce the frequency of collection | 2705
**Deadlock List Report** - Each Deadlock List report is limited to 4000 characters of deadlock information. | 13064
**Error collecting data.** The collection used to populate the Query Execution Statistics drilldown is unable to run when some databases on the instance are in restricted states of access (for example, Single User Mode, Offline). | 7584
**Query Execution Statistics drilldown** - Query Plan returns a duplicate attribute error - This is a Microsoft bug. <br><br> *Workaround:* Restrict the grid by getting fewer records or sorting on a different variable. | 11179
For SQL Activity \| Sessions \| Plan there is a limit on the size of the \<inputbuf\> tag of 1024 bytes (or nearly that). This cannot be expanded as the SQL Server truncates the SQL when it creates the XML. | 2300
**Negative values in Wait Statistics drilldown.** Negative values may be shown in the Waits Details grid. | 3757
**SQL Analysis grid.** The Text Data column in the SQL Analysis grid may occasionally display blank rows. This is due to SQL Server not returning any data in the Text Data column from the trace. | 219577
**SQL Analysis and filtering.** When default filters are set in a mixed environment of SQL Server 2000, SQL Server 2005 and SQL Server 2008, if the filter uses a column that does not exist in one of the versions of SQL Server then the filter is ignored for that version. | 211872
**SQL - Long Running SQL alarm** raised from a Spotlight issued query - This issue follows "Cannot alter the event session", the query stops responding (hangs) so it raises a Long Running SQL alarm. Refer to the Microsoft known issue: https://support.microsoft.com/en-us/kb/2511963  | .



### known issues monitoring Windows Server

Known Issue | Issue ID
------------|---------
**WMI access denied alarm messages.** A large number of WMI access denied alarm messages usually indicates a network problem such as a malfunctioning domain controller or DNS server. When the network problem is resolved, restart the Diagnostic Server service. | N/A
**Microsoft Cluster Server connection problem.** If you are connecting to a Microsoft Cluster Server system that does not have control of all disk resources, the uncontrolled disks may display a value of zero for space in total and space available in Spotlight. To rectify this problem customize your disk view to not show this disk. (Do this by right-clicking the disk and choosing Disk Options) | N/A
**Disk Queue length metric.** Due to a bug in WMI, the Disk Queue length metric can briefly show a false high value when returning from a (valid) Disk Queue Length alarm. | 13227
**Missing data on the CPU drilldown** when monitoring a Windows 2008 R2 Server with more than 32 processors. *Workaround:* http://msdn.microsoft.com/en-au/en-us/library/windows/desktop/aa393067(v=vs.85).aspx | 14493
**Open Sessions grid.** Values displayed in the Elapsed Time and Idle Time columns in the Open Sessions grid (Network drilldown > Sessions tab) may not be accurate if the session has been running for more than 18 hours. | N/A
**Time stamp in Event Log drilldown.** When monitoring a Windows Vista 64-bit or Windows Server 2008 64-bit machine, the time shown for events in the Event Log drilldown is in GMT, not local time. | 4625
**Errors in the Windows Security Log.** Specifying OS Connection Details on Windows connections can cause WMI connection errors to be reported in the Windows Security Log of the machine being monitored. This does not affect Spotlight's monitoring capabilities. | 6722
**Unusually large values displayed in Spotlight.** Spotlight may display unusually large values on some components and charts. These values are incorrect and are due to inaccurate raw performance counter values returned by Microsoft Windows. The following components and charts are affected: <br> *Disk Queue Length chart* (Spotlight on Windows > Disks drilldown > Logical Disk Activity page and Physical Disk Activity page). <br> *Disk Load chart* (Spotlight on Windows > Disks drilldown > Logical Disk Activity page and Physical Disk Activity page). <br><br> *Workaround:* Reboot the machine returning large values. | 5796


{% include links.html %}
