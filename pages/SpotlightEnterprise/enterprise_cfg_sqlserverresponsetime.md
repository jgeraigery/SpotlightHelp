---
title: Configure SQL Server Response Time
tags: [configure_monitoring]
summary: "Define the SQL statement used to measure SQL Server response time."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfg_sqlserverresponsetime.html
folder: SpotlightEnterprise
---


The measure of SQL Server Response Time is reported on the SQL Server \| Overview page \| Sessions panel and the SQL Server \| SQL Activity drilldown \| SQL Summary page. The associated alarm is **User - Response Time Alarm**.

{% include note.html content="Membership of the Spotlight diagnostic administrators group is required to change the SQL Statement used to measure SQL Server response time. For more information, see Spotlight diagnostic user groups." %}


## Configure SQL Server Response Time from the Spotlight Client

Click Configure \| SQL Server Response Time.

## Select template or connection to configure

Select the SQL Server connection from the list of available options. Spotlight will show the configuration for that connection. Make changes if required. Optionally use the options at the bottom of the screen to apply the same configuration to other SQL Server connections or save the configuration as a template.

Alternatively, select a template to configure. The templates you have previously saved for SQL Server response time are listed. On selecting the template you can view / modify / reapply the template configuration. You can delete or rename the template. For more information, see Configuration templates.


## Define the SQL statement used to measure SQL Server response time

### Override the factory settings

Select the **Override the factory settings** option to modify the settings for the selected template or connection.

Edit or replace the SQL statement.

### Use the factory settings

Clear the **Override the factory settings** option to return the settings for the selected template or connection to the Factory Settings. These are the settings that were shipped with Spotlight.

The SQL statement for factory settings is **Select 1**.


## Reuse this configuration

### Apply configuration to…  

Optionally, apply this configuration to other connections.

### Save to Template  

Optionally, save this configuration to a template. Where a template has been selected to configure you will also see options to **Delete** or **Rename** the template. For more information on Templates, see Configuration templates.

## Close the dialog

### OK

Save the SQL Server response time for the selected connection or template.

### Cancel

Discard changes to this screen.


{% include links.html %}
