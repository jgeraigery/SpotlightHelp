---
title: Spotlight API Stored Procedures
keywords: reports
summary: "Stored procedures return metadata about the Spotlight Statistics Repository or data from within the Spotlight Statistics Repository."
sidebar: p_enterprise_sidebar
permalink: enterprise_ssrquery_storedprocedures_api.html
folder: SpotlightEnterprise
---

{% include tip.html content="See stored procedures in action at [Query the Repository][enterprise_ssrquery_data_query]." %}


## spotlight_get_datasources
Returns a list of all data sources in the repository (effectively the contents of spotlight_datasources).

### Syntax
```
spotlight_get_datasources
```

### Input parameters
There are no input parameters for this stored procedure.

### Returned values

ColumnName | ColumnType | Description
-----------|------------|------------
datasource_id | int | ID of data source
datasource_name | nvarchar(255) | Name of data source

## spotlight_get_domains
Returns a list of all the Spotlight Diagnostic Servers putting data into this repository.

### Syntax
```
spotlight_get_domains
```

### Input parameters
There are no input parameters for this stored procedure.

### Returned values

ColumnName | ColumnType | Description
-----------|------------|------------
domain_id | int | ID of domain
domain_description | nvarchar(255) | Descriptive name of domain


## spotlight_get_monitored_objects
Returns a list of names of all the monitored objects that have data in this repository for a given domain_name. If domain_name is NULL all monitored objects are returned. Also returns the monitored object display name, domain description, and technology name.

### Syntax

```
spotlight_get_monitored_objects @domain_name, @technology_name
```

### Input parameters
@domain_name
@technology_name

### Returned values

ColumnName | ColumnType | Description
-----------|------------|------------
monitored_object_name | nvarchar(255) | Name of monitored object
monitored_object_display_name | nvarchar(255) | A user-friendly interpretation of the encoded name that the Spotlight Diagnostic Server uses to uniquely identify a monitored object. This name is suitable for display on reports or other user-visible outputs.
monitored_object_display_technology_name | nvarchar(255) | Combines the columns monitored_object_display_name and technology_name to display a user-friendly name that includes the monitored object name and the technology.
domain_description | nvarchar(255) | Descriptive name of domain
technology_name | nvarchar(255) | Descriptive name of technology


## spotlight_get_table_columns
Returns a list of columns for a table belonging to a data source (effectively the contents of spotlight_stat_names).

### Syntax
```
spotlight_get_table_columns @datasource_name, @table_name
```

### Input parameters
@datasource_name
@table_name

### Returned values

ColumnName | ColumnType | Description
-----------|------------|------------
statistic_name | nvarchar(255) | Name of table column


## spotlight_get_table_data_instance
Returns the rows and columns from a table with a timestamp that most closely matches @date_time.

### Syntax

```
spotlight_get_table_data_instance @date_time, @domain_name, @monitored_object_name, @table_name
```

### Input parameters
@date_time
@domain_name
@monitored_object_name
@table_name

### Returned values
The returned values are dependent on the columns implicit in the table represented by the @table_name parameter.


## spotlight_get_table_keys
Returns a list of keys for a table belonging to a data source (effectively the contents of spotlight_stat_keys).

### Syntax
```
spotlight_get_table_keys @datasource_name, @table_name
```

### Input parameters
@datasource_name
@table_name

### Returned values

ColumnName | ColumnType | Description
-----------|------------|------------
statistic_key_value | nvarchar(255) | Key value for procedure


## spotlight_get_table_range
Returns the rows and columns from a table between @start_date and @end_date.

### Syntax
 ```
 spotlight_get_table_range @start_date, @end_date, @domain_name, @monitored_object_name, @table_name
 ```

### Input parameters
 @start_date

 @end_date

 @domain_name

 @monitored_object_name

 @table_name

### Returned values
The returned values are dependent on the columns implicit in the table represented by the @table_name parameter.


## spotlight_get_table_span
Returns the time span of all stored data for a particular domain_name, monitored object, and table combination.

### Syntax
```
spotlight_get_table_span @domain_name, @monitored_object_name, @table_name
```

### Input parameters
 @domain_name

 @monitored_object_name

 @table_name

### Returned values
The returned values are dependent on the columns implicit in the table represented by the @table_name parameter.


## spotlight_get_tables
Returns a list of tables in the repository for a given data source (effectively the contents of spotlight_stat_classes).

### Syntax
```
spotlight_get_tables @datasource_name
```
### Input parameters
@datasource_name

### Returned values

ColumnName | ColumnType | Description
-----------|------------|------------
statistic_class_name | nvarchar(255) | Name of table


## spotlight_get_technologies
Returns a list of technologies in the repository (effectively the contents of spotlight_technologies).

### Syntax
spotlight_get_technologies

### Input parameters
There are no input parameters for this stored procedure.

### Returned values

ColumnName | ColumnType | Description
-----------|------------|------------
technology_id | int | ID of technology
technology_name | nvarchar(255) | Descriptive name of technology


## spotlight_sqlanalysis_results
Returns the worst performing SQL recorded in the Spotlight Statistics Repository over the supplied time span for a particular SQL Server instance.

### Syntax
```
spotlight_sqlanalysis_results @domain_name, @monitored_object_name, @date_time_from, @date_time_to, @maxrows
```

### Input parameters
@domain_name

@monitored_object_name

@date_time_from

@date_time_to

@maxrows

### Returned values
Returns information about the worst performing SQL recorded in the Spotlight Statistics Repository.


## spotlight_ssr_version
Returns the version number of the Spotlight Statistics Repository.

### Syntax
```
spotlight_ssr_version
```

### Input parameters
There are no input parameters for this stored procedure.

### Returned values
Returns the version number.




{% include links.html %}
