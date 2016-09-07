---
title: Indexes grid
last_updated: July 29, 2016
summary: "Shows the index statistics for all indexes in the SQL Azure database."
sidebar: c_sqlazure_sidebar
id: DatabaseIndexes.IndexesGrid
permalink: sqlazure_grid_indexes.html
folder: ConnectSQLAzure
---




When you first display the Indexes page, by default the top 50 indexes by size are displayed in the grid.

## Columns shown in this grid include:

### Owner

The owner of the index.

### Table

The table that the index is associated with.

### Index

The name of the index.

### Type

The type of index.

### Fill Factor

A percentage specifying how much to fill each leaf level page with data. The remaining percentage reserves free space for future growth, reducing the potential for page splits.

"0" means the index was created or rebuilt using the server default.

### ID

The ID of the index.

### Rows

The number of rows in the table.

### Size MB

The size of the index at the time of its last statistics update, measured in megabytes.



## You can filter the results displayed in the Indexes grid by the following criteria:

* Top N Indexes
* Size or row count
* Index name
* Table name

To filter the results, type appropriate values into the fields above the Indexes grid (wildcards are supported) and then click **Apply Filter**.


{% include links.html %}
