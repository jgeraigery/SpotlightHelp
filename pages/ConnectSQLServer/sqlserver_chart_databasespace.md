---
title: Database Space Chart
last_updated: July 29, 2016
summary: "The Database Space chart shows the disk space usage for databases."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_chart_databasespace.html
id: Databases2_Summary.DBSpaceChart
folder: ConnectSQLServer
---


**Data** components are broken down into space used by:


Data Used |
Data Free | (not allocated to any tables/indexes).

**Logs** are broken down into:

Log Used | space
Log Free | space

Use the Database Space list at the top of the chart to display the size of data and log components in **megabytes** (MB) or as **percentages** of the amount of space taken.

You can restrict the databases that are included in the graph by clicking on the **database(s)** of interest in the top table. Hold down the **Shift** key to select multiple databases or the **Ctrl** key to select individual databases.

  <note type="note">The graphs in the chart are available for each database. When no database is selected in the Databases grid,
  the Database Space chart displays information for all databases. In this case, databases are ordered from largest to smallest.</note>

When you select a database in the Database grid, both charts (Database Space and Database History) display information for the selected database only. You can display information for multiple databases by selecting multiple databases in the Database grid. Hold down the Shift key to select multiple databases, or the CTRL key to select individual databases.


{% include links.html %}
