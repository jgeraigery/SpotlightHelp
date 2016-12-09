---
title: SQL Server Configuration grid
last_updated: July 29, 2016
summary: "The SQL Server Configuration grid shows the SQL Server configuration options."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_sqlserverconfig.html
id: SQLConfig_Summary.ConfigGrid
folder: ConnectSQLServer
---




## To change a modifiable option in this grid:

You can change the value of any **modifiable** options displayed in the grid. You must be a member of the Spotlight Diagnostic Administrators group to use the **Change parameter** option.

1. Click the row in the grid corresponding to the option you want to change. (The label on the **Change parameter...** box at the bottom of the page changes to reflect your choice.)
2. Enter a valid value for the chosen option in the **Change parameter...** box. (The **Min** and **Max** values in the Configuration grid specify the range of valid values.)
3. Click the **Submit** button. Depending on the **Modifiable** value of the option you have chosen, the option value may change:
    * Immediately,
    * When you restart SQL Server, OR
    * Never.


## The Configuration grid contains the following information:

### Name

The name of the specified option.

### Run value

The value currently used by the option.

### Config value

The value that the configuration option is set to; this may not be implemented yet. You usually need to restart SQL Server for any change to take effect.

### Min

The minimum permitted value for the option.

### Max

The maximum permitted value for the option.

### Modifiable

This indicates when changes to the option take effect.

### Immediate

Changes to these options take effect immediately.

### Restart

Changes to these options take effect after SQL Server is stopped and restarted.

### Never

These options cannot be modified.

### Description

A description of the specified configuration option.

## Show Advanced Options

If some parameters are not displayed in the Configuration grid this is due to the **Show Advanced Options** parameter being turned off. Spotlight does not turn this option on automatically as doing so clears the Procedure cache and Buffer cache.

You can turn this option on in the SQL Server Configuration grid by changing the parameter for Show Advanced Options from "0" to "1".


{% include links.html %}
