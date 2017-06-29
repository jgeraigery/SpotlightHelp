---
title: Fragmented Indexes grid
last_updated: April 12, 2017
summary: "Use the Fragmented Indexes grid to assess the fragmentation of index files on the SQL Server."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_fragmentedindexes.html
id: FragmentedIndexesGrid
folder: ConnectSQLServer
---

## The columns of the grid show:

### Database

Show fragmented indexes from all databases or a selected database on the SQL Server.

### Minimum Page Count

Show indexes with at least this number of pages.

### Index Name

The name of the Index.

### Database Name

The name of the database the table is in.

### Owner

The owner of the table the index is associated with.

### Table Name

The name of the table the index is associated with.

### Type

The type of index.

### Partition Number

The index is stored in one or more partitions. Where the index is stored in one partition the Partition Number is 1. For an index with multiple partitions the first Partition Number is 1.

### Average Fragmentation

The percentage of this index (partition) that is fragmented.

### Page Count

The number of pages in the index (partition).


## Using the Fragmented Indexes grid

### Data collection
The data for this grid is collected once a day and stored in the Playback Database.

{% include note.html content="To re-collect the data now, select the criteria and click **Collect now**. This could put significant load on the SQL Server. It is advisable to collect fragmentation information during a quiet period." %}


### Collection criteria definitions
The criteria by which data is collected:

* Top (most) fragmented indexes - default 50
* Database name - default *All*
* Minimum Size - default 10MB = 1280 pages
* Minimum operations - minimum number of either scan or update operations - default 5

### How to customize the schedule and criteria for the default collection
To customize the collection schedule for the default collection, use the Spotlight Client. Click **Configure \| Scheduling** select the connection and customize the **Fragmentation by Index** schedule.

To customize the criteria used to collect the data (as it is collected automatically once a day) use the Connection Tag property.

1. From the Spotlight Client, click **Configure \| Connections**.
   {% include imageClient.html file="tb_config_connections.png" alt="Configure Connections" %}
2. Right-click on the connection and select **Properties \| Tags**.
3. Enter the tag name and value in the **Value** field as per the following examples.
4. Click **Add**.

Configuration | Default value | Tag name | Tag name and value example | Example description
--------------|---------------|----------|--------
Top (most fragmented indexes) | 50 | frag.RowLimit | frag.RowLimit.100 | Set to collect top 100 most fragmented indexes.
Database name | *All* | frag.DatabaseName | frag.DatabaseName.sales | Filter on the database called 'sales'.
Minimum size (Megabytes) |  10 | frag.MinimumSizeMB | frag.MinimumSizeMB.15 | Set the minimum size count to 15 megabytes.
Minimum operations (number of operations) | 5 | frag.MinimumOperations | frag.MinimumOperations.3 | Set the minimum number of operations to 3.

### How to defragment selected indexes

1. Select one or more indexes to defragment and click **Generate Defragmentation Script**.
   * Use CTRL+click or SHIFT+click to select multiple indexes.
   * Use CTRL+A to select all indexes.
   * Click outside the grid to clear all selections.
2. Use SQL Server Management Studio to schedule a job to run this script during a quiet period.

{% include note.html content="Execution of this script could put significant load on the SQL Server." %}


### Playback

{% include note.html content="When in Playback, history will not be displayed for the Fragmented Indexes grid." %}


{% include links.html %}
