---
title: Connection Details for SQL Server
tags: [connection_details,connection_details_for_each_connection_type]
summary: "Monitor SQL Server by supplying the following connection details to Spotlight."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_connect_details.html
folder: ConnectSQLServer
---




## How to enter / edit connection details

Use a Spotlight Client to enter / edit connection details.

From the Spotlight Client

1.  Click **Configure \| Connections**.
2.  Double click **Add new connection**.
3.  Fill in the connection details.

{% include tip.html content="Spotlight can add multiple SQL Server instances via discovery or by importing details from a file. See the Connection Discovery Wizard." %}

## Connection details

### Address

Specify the connect string used to link to the SQL Server (that is, the Server Name, Server Instance Name, or IP address).

{% include tip.html content="For a Microsoft Cluster Server (MSCS) enter the virtual name of the cluster." %}

{% include note.html content="If the SQL Server instance is hosted on a Windows server and UDP port 1434 is closed then the port number must be included in the address used to connect Spotlight to the SQL Server instance." %}


### Display Name
The display name of the SQL Server connection. The display name is used in all displays including the connection tree, connection lists, reports, tables, grids and charts, alarms, alarm actions, alarm descriptions, configuration files, template files, Heatmap and drilldowns.

The display name can be up to 255 characters long. Use letters and numbers. Do not use special characters like % and spaces in the display name.  The display name is not case sensitive. The display name must be unique; no two Spotlight connections to SQL Server can have the same display name.

If you don't create a display name then Spotlight uses the SQL Server address for display purposes.


### Authentication

Specify the authentication for Spotlight to use to connect to the SQL Server instance.

Select **Windows Authentication (using Diagnostic Server credentials)** to use the Windows user configured to run the Spotlight Diagnostic Server. Ensure this account is trusted by the SQL Server. When using Windows authentication to connect to a SQL Server, and that SQL server is in a different domain to the Spotlight Diagnostic Server, the domain the SQL Server is in must trust the domain the Spotlight Diagnostic Server is in.

Alternatively, fill in the **Database User** and **Password** fields. Ensure the database user has sufficient account permissions to retrieve performance data from the SQL Server instance and host by WMI. Typically the account will be a member of the sysadmin server role. It could be a SQL Server login (such as 'sa'). If this is not feasible in your environment, see [How to grant SQL Server account permissions to a trusted user][sqlserver_connect_accountgrantpermissions].

The connection will fail if the account permissions are insufficient to allow Spotlight to collect the data it needs.


### Read Only Intent

 Select this option if the SQL Server instance hosts a secondary replica of an Availability Group and for this secondary replica ApplicationIntent=ReadOnly. Failure to select this option when required will result in some data not being collected for the secondary replica; this will be most noticeable on the **SQL Server \| Databases** drilldown.

### Use Extended Events

#### Selected

The Spotlight Diagnostic Server will use Extended Events to collect data from the SQL Server instance. The data is used by:

* SQL Server \| Workload Analysis Drilldown
* SQL Server \| Wait Events Drilldown
* Deadlock checks: SQL Server \| SQL Activity Drilldown, Locks - Deadlocks Alarm.

If you select to use Extended Events (following a period of time when the use of Extended Events was deselected) the **SQL Server \| Workload Analysis** drilldown and **SQL Server \| Wait Events** drilldown may take a few minutes to repopulate with data.

#### Not Selected

The Spotlight Diagnostic Server will use SQL Server Trace to collect data for deadlock checks. The Spotlight Diagnostic Server will NOT collect data for the **SQL Server \| Workload Analysis** drilldown and **SQL Server \| Wait Events** drilldown.

If you set this value after the connection to the SQL Server is established then the change will not show up immediately on the user interface as the Workload Analysis drilldown and Wait Events drilldown will continue to show historical data till no data is available.

{% include note.html content="The setting for Use Extended Events can be set collectively for all SQL Server on the Spotlight Diagnostic Server from Configure the use of Extended Events." %}


### Obscure string literals in SQL text and parameters in query plans

#### Selected

Dummy text replaces string literals in all displays of the SQL Statement and Query Plan. This protects privacy information that may be contained in those literals.

Large numbers  (greater than 99,999,999) are replaced with 987654321.

#### Not Selected

Large numbers and string literals in SQL Statements and Query Plans are displayed as is.


### Exclude Spotlight sessions from Wait Events and Workload Analysis

When selected Spotlight sessions are excluded from the Wait Events and Workload Analysis drilldowns.

{% include note.html content="For monitored SQL Server versions earlier than SQL Server 2012 some long term Spotlight sessions may remain. For monitored SQL Server 2012 and above all Spotlight Sessions are excluded." %}

### Store SQL text and query plans in playback

When Selected, Spotlight stores SQL query statements and plans in the Playback Database for this SQL Server connection. This data will be available during playback of events and data collected in the recent past in the **SQL Activity drilldown \| Sessions page** and the **SQL Activity drilldown \| Query Execution Statistics page**.

{% include note.html content="Data will not be stored if the Spotlight Diagnostic Server setting has been disabled, see [Configure \| Diagnostic Server \| Store SQL Text and Query Plans in Playback][enterprise_cfgds_storesqltextqueryplans]." %}

### Connection Failure Properties
Set the connection timeout and the number of times Spotlight should attempt to connect to the SQL Server instance before raising the [Connection Failure alarm][sqlserver_alarm_monitoredserver_connectionfailure].

{% include tip.html content="If the number of times Spotlight should attempt to connect to the SQL Server instance before raising an alarm is greater than 9 then type that number into the given field." %}


### Connection
Select the Windows server hosting the SQL Server.

#### Do not monitor
Select **Do not monitor** if you do not want to monitor the Windows server.

#### Cluster (monitor active node)
Select **Cluster (monitor active node)** for a Microsoft Cluster Server (MSCS).

Spotlight uses the current host node name to select the operating system connection. Therefore each Windows node in the cluster must be monitored by Spotlight. Verify each Windows node is in the list of Windows server connections.


Click **Create** to add a Windows server to the list. This opens [Windows Server \| Connection Details][windows_connect_details].


### Alarms template

Select the alarms [configuration template][enterprise_cfgmonitor_templates] to apply to this connection.

Select from any of the SQL Server configuration templates that you have created through [Configure Alarms][enterprise_cfgmonitor_alarms] or select **Factory Settings Template** to apply the Factory Settings shipped with Spotlight.

{% include note.html content="The template will apply to the Windows host of the SQL Server instance if identified. The host is identified in the **Connection** section of the **Connection Details** page." %}

{% include tip.html content="The alarms template option is applicable only when creating a new SQL Server connection. To apply a template to an existing SQL Server connection, see [Configuration Templates][enterprise_cfgmonitor_templates]." %}


## Test the connection
On entering / modifying connection details in the Spotlight Client, click **Test** to test the connection.

## Troubleshooting

### Connection to the Windows host

Verify the SQL Server host is in a domain. Spotlight cannot monitor a SQL Server database when the Windows host is in a workgroup.

If the SQL Server is hosted within Microsoft Cluster Server (MSCS) then ensure the Windows Server host is selected as Cluster (monitor active node). Spotlight uses the current host node name to select the operating system connection. Therefore each Windows node in the cluster must be monitored by Spotlight. Verify each Windows node is in the list of Windows server connections.

The Spotlight Diagnostic Server uses WMI queries to retrieve performance counter information from the Windows server host. Verify WMI is working and returns data properly.

Verify TCP port 135 is open on the Windows server host.

### Connection to the SQL Server instance

 If Spotlight cannot connect to the SQL Server instance then use another tool such as Microsoft's SQL Server Management Studio or sqlcmd to connect to the SQL Server instance. Is the issue with Spotlight's ability to connect to the SQL Server instance or with any any/every tool's ability to connect to the SQL Server instance?

Ensure ports are open as outlined in the Microsoft KBase article that describes SQL Server firewall connectivity issues: http://msdn.microsoft.com/en-us/library/cc646023.aspx.

If Spotlight cannot connect to the SQL Server instance you may need to upgrade Microsoft Data Access Components (MDAC) on the Spotlight Client host AND the Spotlight Diagnostic Server host. More information is available from the Microsoft Download Center (search for MDAC).

### Release Notes

Check the [Spotlight Enterprise Release Notes][enterprise_releasenotes] for known issues.

{% include links.html %}
