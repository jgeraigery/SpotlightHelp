---
title: Add filter
summary: "This dialog is opened from Configure | SQL Analysis on request to add a filter."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_sqlanalysis_addfilter.html
id: 44
folder: SpotlightEnterprise
---


{% include note.html content="Filtering affects the average, minimum, maximum, and last values displayed in the grid." %}

## AND/OR

Connect this filter to the previous filter in the Configure \| SQL Analysis list by AND or OR.

## Column

Select as appropriate.

## Operator

Select as appropriate.

When filtering on a string field such as DatabaseName or ApplicationName, use only the **LIKE** and **NOT LIKE** conditions. The other conditions apply only to numeric values.

## Value

Select as appropriate.

The percent sign (%) and underscore (\_) can be used as wildcards.

{% include note.html content="When connected to a SQL Server 2000 instance, wildcard characters in the Database name field are not supported." %}



{% include links.html %}
