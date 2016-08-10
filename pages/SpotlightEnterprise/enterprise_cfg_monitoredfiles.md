---
title: Configure Monitored Files
tags: [configure_monitoring]
summary: "Spotlight can track the growth of files on monitored Windows Server. Use this screen to define the files to track (usually log files)."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfg_monitoredfiles.html
folder: SpotlightEnterprise
---


Data from tracked files is reported on the Windows Server \| Overview Page \| Files Panel. Spotlight raises a File - Exceeded Set Size Alarm when a tracked file approaches the maximum file size set on this page. Spotlight raises a critical alarm when the file exceeds the maximum file size set on this page.



## Open this screen from the Spotlight Client

1. Select the Windows Server from Monitored connections.
2. Click **Monitor \| Monitored Files**.



## Select template or connection to configure

Select the Windows connection from the list of available options. Spotlight will show the configuration for that connection. Make changes if required. Optionally use the options at the bottom of the screen to apply the same configuration to other Windows connections or save the configuration as a template.

Alternatively, select a template to configure. The templates you have previously saved for Spotlight Monitored Files configuration are listed. On selecting the template you can view / modify / reapply the template configuration. You can delete or rename the template. For more information, see Configuration templates.

## Define the files to track

### Select

Select the **Override the factory settings** option to modify the settings for the selected template or connection.

You can now add files to the list. Click **Add** to Add File.

The files added to the list are tracked. To change the settings for a selected file, click **Edit**. To remove a file from the list, select the file and click **Remove**.

Note: Setting the maximum file size on this page does not prevent the tracked file growing beyond that size.


### Clear

Clear the **Override the factory settings** option to return the settings for the selected template or connection to the Factory Settings. These are the settings that were shipped with Spotlight. The default setting is to track no files.


## Reuse this configuration

### Apply configuration to…  

Optionally, apply this configuration to other connections.

### Save to Template  
Optionally, save this configuration to a template. Where a template has been selected to configure you will also see options to **Delete** or **Rename** the template. For more information on Templates, see Configuration templates.



{% include links.html %}
