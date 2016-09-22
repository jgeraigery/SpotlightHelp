---
title: Configure SQL Analysis
tags: [configure_monitoring]
summary: "Enable or disable SQL Analysis. Define the data to be collected and displayed in the SQL Analysis - Workload View and the SQL Server | SQL Activity Drilldown | SQL Analysis page."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_sqlanalysis.html
folder: SpotlightEnterprise
---


{% include note.html content="Enabling SQL Analysis may adversely affect the performance of your SQL Server. SQL Analysis data collection puts extra load on your SQL Server; the more data you collect the more the load." %}



## Configure SQL Analysis from the Spotlight Client

Click Configure \| SQL Analysis


{% include tip.html content="To open this screen with a connection pre-selected, Select the SQL Server connection (Monitored connections) then click Monitor \| SQL Activity \| SQL Analysis." %}

## Select template or connection to configure

Select the SQL Server connection from the list of available options. Spotlight will show the configuration for that connection. Make changes if required. Optionally use the options at the bottom of the screen to apply the same configuration to other SQL Server connections or save the configuration as a template.

Alternatively, select a template to configure. The templates you have previously saved for SQL Analysis configuration are listed. On selecting the template you can view / modify / reapply the template configuration. You can delete or rename the template. For more information, see Configuration templates.


## Override or use the factory settings

### Override the factory settings

Select the **Override the factory settings** option to modify the settings for the selected template or connection.

Select to **Enable SQL Analysis**. SQL Analysis is disabled by default.

{% include note.html content="Enabling SQL Analysis may adversely affect the performance of your SQL Server. SQL Analysis data collection puts extra load on your SQL Server; the more data you collect the more the load. For this reason Spotlight does not allow you to Enable SQL Analysis for a Template. If you select the option to **Apply Configuration to…** at the bottom of the screen then the Enable SQL Analysis configuration is NOT automatically applied to selected connections; SQL Analysis can only be enabled one connection at a time." %}


### Use the factory settings

Clear the **Override the factory settings** option to return the settings for the selected template or connection to the Factory Settings. These are the settings that were shipped with Spotlight.

For factory settings SQL Analysis is disabled.


## Filters pane

Filters determine what SQL Analysis data is collected from the SQL Server instance.


 Note:

* Filtering affects the average, minimum, maximum, and last values displayed in the grid, as calculations are performed only on data retrieved from the SQL Server instance.
* The data collected from the SQL instance can be filtered for display using local filters on the SQL Analysis - Workload view and the SQL Analysis grid (SQL Activity drilldown).

### Get these Event Classes

Select the event classes to be collected from the SQL Server instance.

### Filters

The list of filters applied to the SQL Server instance.

### Add

Click to create a filter. Open Configure \| SQL Analysis \| Add Filter.

Note:

* You can use the percent sign (%) and underscore (_) as wildcards.
* You cannot use wildcard characters in the Database name field when connected to a SQL Server 2000 instance.
* When filtering on a string field such as DatabaseName or ApplicationName, use only the "LIKE" and "NOT LIKE" conditions. The other conditions apply only to numeric values.

### Edit

Click to modify the selected filter.

### Remove

Click to delete the selected filter.

### Clear

Click to turn off filtering. All filters are removed.


## Data Collection pane

The options on the Data Collection pane specify the method and time frame for the collection of SQL Analysis data.

### SQL Analysis is scheduled to collect every n minutes

How often Spotlight collects SQL Analysis data. The default is six hours.

To change how often Spotlight collects SQL Analysis data

1. Click the link.
2. Select **Override the default settings for the collection 'SQL Analysis'**.
3. Under ‘Store reporting data in the Spotlight Statistics Repository’, click **Store data**.
4. Set the collection schedule. Data can be collected at regular intervals or at a specific time on one or more days.

### Use continuous Rowset trace

Select to use Rowset trace to collect SQL Analysis data.

Rowset trace is convenient though may affect throughput on busy servers. It should be used with care.

### Use sampling Server Side trace

Select to use sampling Server Side trace to collect SQL Analysis data. You must also enter a value for **Server trace file location**.

Server Side trace is more suitable for busy servers than Rowset trace.

### Run trace for / or until trace file reaches

Server Side trace will run until one of these conditions is met.

Specify the maximum amount of time Server Side trace should run for.

Specify the maximum size of the trace file.

### Server trace file location (on the SQL Server host)

Type a location for the server trace file. The path is relative to the SQL Server instance.

For example, C:\Trace Files.

### Retrieve data through SQL Server

Select to process trace files on the SQL Server instance. This option has the potential to affect throughput on busy servers.

Use this option when there are permission or firewall settings preventing the Spotlight Diagnostic Server machine from retrieving files from the SQL Server machine.

This is the default option.

### Retrieve data from the file system

Select to process trace files on the Spotlight Diagnostic Server. The Spotlight Diagnostic Server machine must have the appropriate permissions required to connect to the SQL Server instance.

This option is not available when configuring default settings.

### Trace file location (from Diagnostic Server host)

Type the location of the server trace files on the SQL Server instance. The location should be a shared folder the Spotlight Diagnostic Server can connect to.

For example, \\computername\Trace Files.

This option is not available when configuring default settings.


## Advanced pane

Spotlight aggregates the data collected for SQL Analysis and then stores only the aggregated data.

### Aggregate the top n SQL statements

Enter the maximum number of SQL executions to be retrieved from the SQL Server instance. The default is 200.

### Sorting by

This setting determines what the top SQL executions are to collect. Choose from Average Duration, Average CPU, or Average I/O. When the limit is reached, the least significant records are discarded as new executions are collected.


## Reuse this configuration

### Apply configuration to…  

Optionally, apply this configuration to other connections.

{% include note.html content="Enabling SQL Analysis may adversely affect the performance of your SQL Server. SQL Analysis data collection puts extra load on your SQL Server; the more data you collect the more the load. For this reason Spotlight does not allow you to Enable SQL Analysis for a Template. The Enable SQL Analysis configuration is NOT automatically applied to selected connections; SQL Analysis can only be enabled one connection at a time." %}

### Save to Template  

Optionally, save this configuration to a template. Where a template has been selected to configure you will also see options to **Delete** or **Rename** the template. For more information on Templates, see Configuration templates.

## Close the dialog

### OK

Save the SQL Analysis configuration  for the selected connection or template.

### Cancel

Discard changes to this screen.


{% include links.html %}
