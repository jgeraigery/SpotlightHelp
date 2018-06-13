---
title: Configure Error Log Entries
tags: [configure_monitoring,apply_configuration_to]
summary: "Configure Spotlight to scan the SQL Server error log for matching entries."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_errorlogentries.html
id: 234
folder: SpotlightEnterprise
---


## How Spotlight treats matched error log entries

Matched entries raise the **Error Log - Error Count alarm** on the SQL Server \| Overview Page \| Background Processes panel \| Error Log button. More information on the matched entry is available from the [SQL Server \| Error Log drilldown][sqlserver_drilldown_errorlog].

{% include note.html content="Spotlight scans the error logs at the configured frequency. If you make changes to the alert rules it may take some time for changes to take effect. You can change the frequency via [Configure \| Scheduling][enterprise_cfgmonitor_scheduling]." %}


## Configure error log entries from the Spotlight Client

Click {% include inline_imageClient.html file="tb_config_errorlogentries.png" alt="Configure Error Log Entries" %} **Configure \| Error Log Entries**.

{% include tip.html content="To open this screen with a connection pre-selected, from the SQL Server \| Overview page click **Error Log**, or from the SQL Server \| Error Log drilldown click **Error Log Entries**." %}


## Select template or connection to configure
Select a SQL Server connection from the list of available options. On selecting the connection you can view / modify the configuration. When done you can use the options at the bottom of the screen to apply this same configuration to other SQL Server connections or save the configuration as a template.

Alternatively, select a template to configure. The templates you have previously saved for Spotlight Error Log Entries configuration are listed. On selecting the template you can view / modify / reapply the template configuration. You can delete or rename the template. For more information, see [Configuration templates][enterprise_cfgmonitor_templates].


## Override or use the factory settings
Select the **Override the factory settings** option to modify the settings for the selected template or connection.

When you clear the **Override the factory settings** option you return the settings for the selected template or connection to the Factory Settings. These are the settings that were shipped with Spotlight Enterprise.


## Enable error log scanning
By default this option is selected and Spotlight Enterprise scans the SQL Server error logs. Clear the **Enable error log scanning** option to stop Spotlight Enterprise from scanning the SQL Server error logs.


## Match List
For each row on the Match List - If **Enabled** is selected then Spotlight Enterprise scans the SQL Server error log for the given **Log Entry**. If found then the log entry will be tabled in the Error Log drilldown. Additionally, if **Raise Alarm** is selected then Spotlight Enterprise will raise an alarm of the severity in the **Sev** column. See more on [SQL Server Alarms][sqlserver_alarms].


### Default settings for the Match List

Enabled | Sev | Log Entries | Raise Alarm | Alarm Raised
--------|-----|-------------|-------------|-------------
Yes | Medium | Severity: 17 | Yes | SQL Server Fatal Table Integrity Suspect Error (severity level 22)
Yes | Medium | Severity: 18 | Yes | SQL Server Fatal Database Integrity Suspect Error (severity level 23)
Yes | Medium | Severity: 19 | Yes | SQL Server Fatal Hardware Error (severity level 24)
Yes | High | Severity: 20 | Yes | SQL Server Fatal Hardware Error (severity level 25)
Yes | High | Severity: 21 | Yes | SQL Server Low Severity Error Log Message
Yes | High | Severity: 22 | Yes | SQL Server Low Severity Error Log Message
Yes | High | Severity: 23 | Yes | SQL Server Low Severity Error Log Message
Yes | High | Severity: 24 | Yes | SQL Server Low Severity Error Log Message
Yes | High | Severity: 25 | Yes | SQL Server Low Severity Error Log Message
Yes | Low | Backup Failed | No | SQL Server Low Severity Error Log Message
Yes | Low | SqlDumpExceptionHandler | No | SQL Server Low Severity Error Log Message
Yes | Low | TABLE corrupt | No | SQL Server Low Severity Error Log Message
Yes | Low | admin | No | SQL Server Low Severity Error Log Message
Yes | Low | cannot obtain a LOCK | No | SQL Server Low Severity Error Log Message
Yes | Low | Error | No | SQL Server Low Severity Error Log Message
Yes | Low | Victim Resource | No | SQL Server Low Severity Error Log Message
Yes | Low | Expire | No | SQL Server Low Severity Error Log Message
Yes | Low | stack | No | SQL Server Low Severity Error Log Message
Yes | Low | is full | No | SQL Server Low Severity Error Log Message
Yes | Low | cannot | No | SQL Server Low Severity Error Log Message
Yes | Low | hung | No | SQL Server Low Severity Error Log Message
Yes | Low | WARNING | No | SQL Server Low Severity Error Log Message
Yes | Low | Unable | No | SQL Server Low Severity Error Log Message
Yes | Low | Could not allocate new page | No | SQL Server Low Severity Error Log Message
Yes | Low | attempting to unlock unowned | No | SQL Server Low Severity Error Log Message
Yes | Low | failed | No | SQL Server Low Severity Error Log Message

### Changing the Match List
Providing the **Override the factory settings** option is selected above, you can modify entries tabled on the Match List.

#### Enabled
An entry must be **Enabled** for Spotlight Enterprise to scan the SQL Server error logs for it.

#### Add / Edit
Click **Add** to add an entry to the Match List. Click **Edit** to modify the selected entry on the Match List.

{% include note.html content="For the **Error Log Entry** text do not use the \| character as Spotlight uses this character to mark the end of the string." %}

#### Copy
Make a copy of the selected entry on the Match List.

#### Delete
Remove the selected entry from the Match List.

#### Enable All / Disable All
Click **Enable All** to enable all entries on the Match List. Click **Disable All** to disable all entries on the Match List.

#### Raise alarm
When **Raise alarm** is selected, Spotlight Enterprise will raise an alarm when the SQL Server error log entry is found. Note that you will not be able to select the **Raise alarm** option while the **Enabled** option is not selected.


## Ignore List  
Spotlight Enterprise will not raise an alarm for error log entries that are matched by at least one entry on the Ignore List. Use the Ignore List to define cases where error log entries matched (from the Match List) should be ignored by Spotlight Enterprise.

### Default string entries in the Ignore List

* Login
* START_FAILED
* ANSI_WARNINGS


## Reuse this configuration

### Apply configuration to…  

Optionally, apply this configuration to other connections.

### Save to Template  

Optionally, save this configuration to a template. Where a template has been selected to configure you will also see options to **Delete** or **Rename** the template. For more information on Templates, see [Configuration templates][enterprise_cfgmonitor_templates].

## Close the dialog

### OK

Save the Error Log Entries configuration for the selected connection or template.

### Cancel

Discard changes to this screen.

{% include links.html %}
