---
title: Databases drilldown for SQL Azure
last_updated: July 29, 2016
summary: "Drilldown on the SQL Azure database, tables, and indexes."
sidebar: c_sqlazure_sidebar
permalink: sqlazure_drilldown_databases.html
folder: ConnectSQLAzure
---


{% include note.html content="When in Playback, history will not be displayed for SQL Azure database information." %}

## How to open the Databases drilldown

From the Spotlight Client

1. Select the connection from the left Connections pane.
2. Click **Monitor \| Databases** from the ribbon.
   {% include imageClient.html file="tb_drilldown_databases.png" alt="Databases drilldown for SQL Azure" %}

{% include tip.html content="Click for more information on using [Spotlight Charts][enterprise_display_charts] and [Spotlight Grids][enterprise_display_grids]." %}


## About the Databases drilldown

### Summary page

The Database Space chart shows the disk space usage for databases, displayed in megabytes or as a percentage. To switch between statistics, click the arrow next to the chart name.

Data components are broken down into space used by:

* Data Used
* Data Free (not allocated to any tables/indexes)

The maximum database size is determined by the edition of the SQL Azure database.

### Tables page
Investigate tables, table space, and table growth.

#### Tables grid
The Tables grid shows all tables in the SQL Azure database, including their size, number of rows, and free space.

You can filter the results displayed in the Tables grid by the following criteria:

* Top N tables
* Size or row count
* Table name

To filter the results, type appropriate values into the fields above the Tables grid (wildcards are supported) and then click **Apply Filter**.

#### Table Space chart
Shows the amount of space used by each table, displayed in megabytes or as the number of rows. To switch between megabytes and rows, click the arrow next to the chart name.

#### Table Growth chart
Shows the amounts by which each table is growing over time, displayed in megabytes or as the number of rows. To switch between megabytes and rows, click the arrow next to the chart name.


### Indexes page
The Indexes grid shows the index statistics for all indexes in the SQL Azure database.

When you first display the Indexes page, by default the top 50 indexes by size are displayed in the grid.

You can filter the results displayed in the Indexes grid by the following criteria:

* Top N Indexes
* Size or row count
* Index name
* Table name

To filter the results, type appropriate values into the fields above the Indexes grid (wildcards are supported) and then click **Apply Filter**.






{% include links.html %}
