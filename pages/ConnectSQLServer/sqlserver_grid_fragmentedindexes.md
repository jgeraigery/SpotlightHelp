---
title: Fragmented Indexes Grid
last_updated: July 29, 2016
summary: "Use the Fragmented Indexes grid to assess the fragmentation of index files on the SQL Server."
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_fragmentedindexes.html
id: FragmentedIndexesGrid
folder: ConnectSQLServer
---

<note type="note">You can apply a filter to the grid. Select from the options and click <uicontrol>Apply Filter</uicontrol>.</note>


## Show Top

By default show the 50 most fragmented indexes.

## Database

Show fragmented indexes from all databases or a selected database on the SQL Server.

## Minimum Page Count

Show indexes with at least this number of pages.

## Index Name

The name of the Index.

## Database Name

The name of the database the table is in.

## Owner

The owner of the table the index is associated with.

## Table Name

The name of the table the index is associated with.

## Type

The type of index.

## Partition Number

The index is stored in one or more partitions. Where the index is stored in one partition the Partition Number is 1. For an index with multiple partitions the first Partition Number is 1.

## Average Fragmentation

The percentage of this index (partition) that is fragmented.

## Page Count

The number of pages in the index (partition).


{% include links.html %}
