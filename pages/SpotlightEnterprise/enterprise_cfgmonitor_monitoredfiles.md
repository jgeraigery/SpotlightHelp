---
title: Configure Monitored Files
tags: [configure_monitoring]
summary: "Configure Spotlight to track the growth of files (usually log files) on monitored Windows Server."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_monitoredfiles.html
folder: SpotlightEnterprise
---


Data from tracked files is reported on the Windows Server \| Overview Page \| Files Panel. Spotlight raises a File - Exceeded Set Size Alarm when a tracked file approaches the maximum file size set on this page. Spotlight raises a critical alarm when the file exceeds the maximum file size set on this page.



## Configure monitored files from the Spotlight Client

1. Select the Windows Server from Monitored connections.
2. Click **Monitor \| Monitored Files**.



## Select template or connection to configure

Select the Windows connection from the list of available options. Spotlight will show the configuration for that connection. Make changes if required. Optionally use the options at the bottom of the screen to apply the same configuration to other Windows connections or save the configuration as a template.

Alternatively, select a template to configure. The templates you have previously saved for Spotlight Monitored Files configuration are listed. On selecting the template you can view / modify / reapply the template configuration. You can delete or rename the template. For more information, see Configuration templates.

## Configuration

### Track files

1. Select the **Override the factory settings** option.
2. You can now add files to the list. Click **Add** to Add File.
3. Spotlight tracks the listed files.

To change the settings for a selected file, click **Edit**. To remove a file from the list, select the file and click **Remove**.

{% include note.html content="Setting the **Max Allowed File Size** value does NOT prevent the file from growing beyond that size." %}


### Do not track files

Clear the **Override the factory settings** option.

This is the configured Factory Setting.


## Reuse this configuration

### Apply configuration to…  

Optionally, apply this configuration to other connections.

### Save to Template  

Optionally, save this configuration to a template. Where a template has been selected to configure you will also see options to **Delete** or **Rename** the template. For more information on Templates, see Configuration templates.


## Close the dialog

### OK

Save changes to the configuration for the selected connection or template.

### Cancel

Discard changes to this screen.


{% include links.html %}
