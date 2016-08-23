---
title: Index Density Grid
last_updated: July 29, 2016
summary: "When a single index is selected in the Indexes grid, the Density grid shows the density values for each combination of columns in the index."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_indexdensity.html
id: Databases2_Indexes_Stats.DensityGrid
folder: ConnectSQLServer
---

The columns in the grid are:

## Columns

The name of the columns in the index.

## Density

Density is the term used by SQL Server to represent the selectivity of the index columns. The more selective an index is, the more useful it is in searches. Density values range from 0% to 100%. A unique index will have a Density value of **1/(#rows in table)**. Generally, density values of 10% or lower are highly selective indexes. Density can be difficult to interpret as the value is a function of the number of records in the table.

## Avg Key Length

The average length of all the index columns.


<note type="note">The Density values shown in this grid come from the latest statistics for the selected index.
  If the index statistics are out of date, so too will these values be.
  Check the <uicontrol>Last Updated</uicontrol> statistic on the Statistics sub-page for the date on which statistics where last collected.
  Use the <uicontrol>Update Statistics</uicontrol> command (available by right-clicking an entry in the Indexes table) to re-collect statistics.
  Only members of the Spotlight Diagnostic Administrators group can use the Update Statistics option.</note>


{% include links.html %}
