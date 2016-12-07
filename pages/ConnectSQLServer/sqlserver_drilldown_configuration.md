---
title: Configuration drilldown
last_updated: July 29, 2016
summary: "The Configuration drilldown shows the various SQL Server configuration options, and allows you to make changes to most of these."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_drilldown_configuration.html
folder: ConnectSQLServer
---


## How to open the Configuration drilldown

From the Spotlight Client

1. Select the connection from the left Connections pane.
2. Click **Monitor \| Configuration** from the ribbon.
   {% include imageClient.html file="tb_drilldown_config.png" alt="Configuration drilldown for SQL Server" %}

{% include tip.html content="Click for more information on using [Spotlight Charts][enterprise_display_charts] and [Spotlight Grids][enterprise_display_grids]." %}


## About the SQL Server drilldown


Investigate SQL Server configuration options.

### SQL Server Configuration grid

The SQL Server Configuration grid shows the SQL Server configuration options. You can change the value of any modifiable options displayed in the grid.

You must be a member of the Spotlight Diagnostic Administrators group to use the **Change parameter** option.

If some parameters are not displayed in the Configuration grid this is because the **Show Advanced Options** parameter is turned off. Spotlight does not turn this option on automatically as doing so clears the Procedure cache and Buffer cache. You can turn this option on by changing the parameter for Show Advanced Options from "0" to "1".

### To change a modifiable option in the grid

1. Click the row in the grid corresponding to the option you want to change.
2. Enter a valid value for the chosen option in the **Change parameter** field. The Min and Max values in the Configuration grid specify the range of valid values.
3. Click the **Submit** button. Depending on the **Modifiable** value of the option you have chosen, the option value may change:
    * Immediately, or
    * When you restart SQL Server.


{% include links.html %}
