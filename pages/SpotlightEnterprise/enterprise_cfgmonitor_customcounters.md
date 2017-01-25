---
title: Configure Custom Counters
tags: [configure_monitoring,apply_configuration_to]
summary: "Configure Spotlight to track counters not included in Spotlight."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_customcounters.html
id: 18
folder: SpotlightEnterprise
---

Spotlight can be configured to raise an alarm on custom counters. For more information, see [Add alarms to custom counters][enterprise_cfgmonitor_alarm_customcounters] and SQL Server \| SQL Activity drilldown. To configure how often Spotlight collects Custom Counter data, see [Configure \| Scheduling][enterprise_cfgmonitor_scheduling].

{% include note.html content="Membership of the Spotlight diagnostic administrators group is required to configure custom counters. For more information, see Spotlight diagnostic user groups." %}


## Configure custom counters from the Spotlight Client

Click **Configure \| Custom Counters**.

{% include tip.html content="To open this screen with a connection pre-selected, from the Spotlight Overview page click **Custom Counters**, or right-click **Custom** on the System panel and select **Configure Custom Counters**, or from the SQL Activity drilldown \| Custom Counters page, click **Configure \| Custom Counters**." %}

## Select template or connection to configure

Select the SQL Server or Windows connection from the list of available options. Spotlight will show the configuration for that connection. Make changes if required. Optionally use the options at the bottom of the screen to apply the same configuration to other SQL Server (Windows) connections or save the configuration as a template.

Alternatively, select a template to configure. The templates you have previously saved for Spotlight Custom Counter configuration are listed. On selecting the template you can view / modify / reapply the template configuration. You can delete or rename the template. For more information, see [Configuration templates][enterprise_cfgmonitor_templates].

## Override or use the factory settings

### Override the factory settings

Select the **Override the factory settings** option to modify the settings for the selected template or connection.

Add custom counters to the list. Click **Add**. Enter the name and query for the custom counter.

To edit the custom counter name and query, select the custom counter and click **Edit**. To remove a custom counter from the list, select the custom counter and click **Remove**. To disable a custom counter, deselect the check box next to the custom counter name.

Click **Edit Thresholds** to open [Configure \| Alarms][enterprise_cfgmonitor_alarms].

### Use factory settings

Clear the **Override the factory settings** option to return the settings for the selected template or connection to the Factory Settings. These are the settings that were shipped with Spotlight.

The default setting is no custom counters for this connection.


## Custom Counter properties

### Name

The name of the custom counter. The name is displayed in the Custom Counters drilldown.

### Query

For SQL Server queries, use T-SQL syntax. For Windows queries, use WMI. It is recommended that the query return only one column and one row. For all custom counter queries, Spotlight reads only the first column of the first row of data. Any additional data is ignored. To return multiple values, use more than one query. See the following for examples of custom counter queries.

**Pages Allocated** (SQL Server 2005 or later)

```
select cntr_value from sys.dm_os_performance_counters
where  object_name like '%:Access Methods%'
and    counter_name = 'Pages Allocated/sec'
```

**User Connections** (SQL Server 2000)

```
select cntr_value from master.dbo.sysperfinfo
where  object_name like '%:General Statistics%'
and    counter_name = 'User Connections'
```

**Open Files** (Windows)

```
SELECT FilesOpen FROM Win32_PerfRawData_PerfNet_Server
```

## Reuse this configuration

### Apply configuration to…  

Optionally, apply this configuration to other connections.

### Save to Template  

Optionally, save this configuration to a template. Where a template has been selected to configure you will also see options to Delete or Rename the template. For more information on Templates, see [Configuration templates][enterprise_cfgmonitor_templates].



{% include links.html %}
