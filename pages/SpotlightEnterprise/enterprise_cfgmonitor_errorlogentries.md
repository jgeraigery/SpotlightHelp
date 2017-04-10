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

Select the SQL Server connection from the list of available options. Spotlight will show the configuration for that connection. Make changes if required. Optionally use the options at the bottom of the screen to apply the same configuration to other SQL Server connections or save the configuration as a template.

Alternatively, select a template to configure. The templates you have previously saved for Spotlight Error Log Entries configuration are listed. On selecting the template you can view / modify / reapply the template configuration. You can delete or rename the template. For more information, see [Configuration templates][enterprise_cfgmonitor_templates].

## Override or use the factory settings

### Override the factory settings

1. Select the **Override the factory settings** option to modify the settings for the selected template or connection.
2. Select **Enable error log scanning** to request Spotlight scan the SQL Server error log for matching entries.
3. Edit the list of log entry text strings as appropriate.

### Use factory settings

Clear the **Override the factory settings** option to return the settings for the selected template or connection to the Factory Settings. These are the settings that were shipped with Spotlight.

The default setting is to not scan the SQL Server error log for matching entries.


## Edit the list of log entry text strings as appropriate

Click **Add** to add to the list. Each text string can be enabled or disabled as appropriate. Spotlight only matches enabled text strings.

### Add

Add a new text string for Spotlight to scan each log entry for.

Do not use the \| character as part of the text string as Spotlight uses this character to mark the end of the string.

### Edit

Modify the selected text string.

### Delete

Remove the selected text string.

### Copy

Copy the selected text string to a new entry.

### Enable All

Enable all text strings.

### Disable All

Disable all text strings.


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
