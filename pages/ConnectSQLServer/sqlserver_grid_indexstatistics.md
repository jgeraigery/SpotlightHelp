---
title: Indexes Statistics Summary
last_updated: July 29, 2016
summary: ""
sidebar: c_sqlserver_sidebar
permalink: sqlserver_grid_indexstatistics.html
id: Databases2_Indexes_Stats.Summary
folder: ConnectSQLServer
---


The following summary statistics are displayed on the Statistics sub-page:

## Density

Density is the term used by SQL Server to represent the selectivity of the index columns. The more selective an index is, the more useful it is in searches.  Density values range from 0% to 100%. A unique index will have a Density value of 1/(#rows in table). Generally, density values of 10% or lower are highly selective indexes. Density can be difficult to interpret as the value is a function of the number of records in the table.

## Avg Key length

The average length of all the index columns.

## Last Updated

The time and date that the statistics were last updated.

## Rows

The number of rows in the index.

{% include links.html %}
