---
title: Indexes Grid
last_updated: July 29, 2016
summary: "This grid shows the index statistics for all indexes in the selected tables."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_indexes.html
id: Databases2_Indexes.grdDatabases2_Indexes
folder: ConnectSQLServer
---


SQL Server stores statistics about the distribution of the key values in each index, and uses these statistics to determine which index(es) to use in query processing.

When you first display the Indexes page, by default the top 50 indexes by size are displayed in the grid.

Selecting a single row in this grid shows detailed index statistics for that index in the bottom section of the drilldown.

Columns shown in this grid include

## Database Name

The name of the specified database.

## Owner

The owner of the index.

## Table

The table that the index is associated with.

## Index

The name of the index.

## Partition

The partition where the index is stored.

## Data Space

The data space (filegroup, partition scheme, or FILESTREAM data filegroup) where the index is stored.

## Type

The type of index.

## Fill Factor

A percentage specifying how much to fill each leaf level page with data. The remaining percentage reserves free space for future growth, reducing the potential for page splits.

"0" means the index was created or rebuilt using the server default.

## ID

The ID of the index.

## Rows

The number of rows in the table.

## RowModCtr

The number of row modifications made since statistics were last updated for this index.

Size MB

The size of the index at the time of its last statistics update, measured in megabytes.

## You can select one or more indexes from this grid.

When only **one index** is selected, its distribution statistics are displayed in the bottom part of the drilldown. When **multiple indexes** are selected, statistics are displayed only for the index with focus.

The **Update Statistics** command can be used to (re)collect index distribution statistics for the selected index(es). This command runs an **UPDATE STATISTICS** command on each of the selected indexes. This collects the latest index statistics for each index. The Update Statistics command is displayed on the shortcut menu. To display this command, select an entry in the Indexes table and then right-click.

## You should update index statistics whenever:

* There have been significant changes in the key values in the index. This can be seen in the **RowModCtr** column.
* A large amount of data in an indexed column has been added, changed, or removed (that is, if the distribution of key values has changed), or the table has been truncated using the TRUNCATE TABLE statement and then repopulated.

<note type="note">Only members of the Spotlight Diagnostic Administrators group can use the Update Statistics option.</note>

You can filter the results displayed in the Indexes grid by the following criteria:

* Top N Indexes by size, row count, heaps only, cluster only, or non-clustered only
* Data Space name
* Index name

To filter the results, type appropriate values into the fields above the Indexes grid (wildcards are supported) and then click **Apply Filter**.


{% include links.html %}
