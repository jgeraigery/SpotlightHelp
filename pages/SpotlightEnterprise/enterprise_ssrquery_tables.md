---
title: Table Definitions
keywords: reports
summary: "This is a reference to the repository objects (tables) created by Spotlight in the Spotlight Statistics Repository."
sidebar: p_enterprise_sidebar
permalink: enterprise_ssrquery_tables.html
folder: SpotlightEnterprise
---


{% include tip.html content="See also [The Spotlight Statistics Repository Schema][enterprise_ssrquery_schema]." %}

## spotlight_datasources
spotlight_datasources contains data used to categorize the collections that are performed. There is one row in this table for each category of data collected.

Column | Description
-------|------------
datasource_id | Generated ID.
datasource_name | Name of the data source.

## spotlight_domains
spotlight_domains contains data about Spotlight Diagnostic Servers. If you have multiple Spotlight Diagnostic Servers feeding the Spotlight Statistics Repository, there is one row per Spotlight Diagnostic Server in this table.

Column | Description
-------|------------
domain_id | Generated ID.
domain_description | The name of the domain (analogous to Spotlight Diagnostic Server host name – means that this Spotlight Statistics Repository can hold data from multiple Spotlight Diagnostic Servers).

## spotlight_monitored_objects
spotlight_monitored_objects contains data about the SQL Servers and Windows hosts that a Spotlight Diagnostic Server is monitoring. There is one row in this table for each SQL Server or Windows host being monitored by each Spotlight Diagnostic Server.

Column | Description
-------|------------
monitored_object_id | Generated ID.
monitored_object_name | Name of monitored object (Windows host name or SQL Server Instance Name etc).
monitored_object_display_name | A user-friendly interpretation of the encoded name that the Spotlight Diagnostic Server uses to uniquely identify a monitored object. This name is suitable for display on reports or other user-visible outputs.
parent_monitored_object_id | The monitored_object_id value of another monitored object upon which this one depends, or null if no such dependency exists. For example, a SQL Server database’s parent will be the Windows host upon which it runs.
technology_id | The technology of this monitored object.
domain_id | The domain (that is, Spotlight Diagnostic Server) this monitored object belongs to.

## spotlight_perfdata
spotlight_perdata is the fact table into which all of the data is stored. Each fact is effectively matrixed by the hierarchy of attributes that denote which Spotlight Diagnostic Server, monitored object, collection and collection column the datum originally came from.

Column | Description
-------|------------
perfdata_id | Generated ID.
monitored_object_id | The monitored object that this fact came from.
statistic_class_id | The collection that this fact came from.
statistic_name_id | The column in the collection that this fact came from.
statistic_key_id | The key column of the collection that this fact came from.
timecollected | The time this fact was collected from the monitored object.
raw_value | The raw value returned by the collection for that column.
num_observations | Internal use only.
sum_of_values | Internal use only.
max_value | Internal use only.
min_value | Internal use only.
sum_of_squares | Internal use only.
wide_string | An alternative to raw_value that is used where the width of the data collected is too large for a variant data type. Either wide_string will contain a value or raw_value but never both.<br><br>The using_wide_string column in the spotlight_stat_names table shows whether a statistic name is using the wide_string column or not.

## spotlight_stat_classes
spotlight_stat_classes contains the names of collections being stored in the Spotlight Statistics Repository. There is one row for each table/data source combination.

Column | Description
-------|------------
statistic_class_id | Generated ID.
datasource_id | The data source that this collection belongs to.
statistic_class_name | The name of the collection.

## spotlight_stat_keys
spotlight_stat_keys contains key values for all of the collections stored in the Spotlight Statistics Repository. Each key value/table/data source combination has a row in this table. The purpose of this table is to allow queries to get data from the fact table based on a key value without having to scan values in the fact table itself.

Column | Description
-------|------------
statistic_key_id | Generated ID.
statistic_class_id | The statistic_class (Collection) this column belongs to.
datasource_id | The data source of the collection that this column belongs to.
statistic_name_id | Generated ID.
statistic_key_name | The name of the key column.

## spotlight_stat_names
spotlight_stat_names contains data about the columns belonging to collections. There is one row in this column for each column/table/data source combination.

Column | Description
-------|------------
statistic_name_id | Generated ID.
statistic_class_id | The statistic_class (collection) this column belongs to.
datasource_id | The data source of the collection that this column belongs to.
statistic_name | The name of the column.
datatype_guide | This column provides a broad guide to the type of data that can be expected in facts for this named statistic. Values can be “string”, “numeric” or “date”.
derived | Whether this is a derived column or not.
using_wide_string  | Whether the value for this data source is stored in the wide_string column in the spotlight_perdata table or not. If not it is stored in the raw_value column.

## spotlight_technologies
spotlight_technologies contains data used to categorize the collections that are performed. There is one row in this table for each category of data collected.

Column | Description
-------|------------
technology_id | Generated ID.
technology_name | The name of the technology.

## spotlight_timestamps
spotlight_timestamps contains a summary of times for which data was collected, qualified by monitored entity. It allows Spotlight to quickly determine the times for which historical data is available for individual monitored entities, without the overhead of scanning the potentially large fact table spotlight_perfdata. There is one row in this table for each category of data collected.

Column | Description
-------|------------
timestamp_id | Generated ID.
timecollected | The time this fact was collected from the monitored object.
domain_id | The domain that this fact belongs to.
monitored_object_id | Generated ID.
statistic_class_id | The collection that this fact came from.


{% include links.html %}
