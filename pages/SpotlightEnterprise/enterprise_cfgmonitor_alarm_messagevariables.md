---
title: Alarms - Message Variables
summary: "These variables provide useful information in describing an alarm. Message variables are used in the Alarm Action Dialog and the Details column of the Alarm log. The text in the Alarm Log | Details column is defined and can be modified in Configure an alarm."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_alarm_messagevariables.html
folder: SpotlightEnterprise
---

As an example, the default Details text displayed when the CPU - Individual CPU Usage alarm is raised is

{% raw %}
```liquid
Average utilization of processor {{key}} is {{value}}%.
```
{% endraw %}

## Variables

### Connection Name

{% raw %}
```liquid
{{CONNECTION_NAME}}
```
{% endraw %}

The name of the connection the alarm was raised on.

### Message

{% raw %}
```liquid
{{MESSAGE}}
```
{% endraw %}

The error message from the alarm.

### Alarm Name

{% raw %}
```liquid
{{RULE_NAME}}
```
{% endraw %}

The name of the alarm.

### Severity

{% raw %}
```liquid
{{SEVERITY}}
```
{% endraw %}

The severity of the raised alarm.


### Time

{% raw %}
```liquid
{{TIME}}
```
{% endraw %}

The time the alarm was raised.

### Value

{% raw %}
```liquid
{{value}}
```
{% endraw %}

The value that will trigger the alarm. For example in a CPU alarm this would be the % CPU that is measured. This can be prefixed with **int:** to force the value to be displayed as an integer. As in:

{% raw %}
```liquid
{{int:value}}
```
{% endraw %}

### Key Value

{% raw %}
```liquid
{{key}}
```
{% endraw %}

The value of the key in the collection. Some collections are multi-valued and have a key that differentiates the data. For example in the database backup alarm it is the database name. This field only makes sense where the collection is multi-valued. By default this variable is always included in the alarm text for collections that are multi-valued.


### Tag Value

{% raw %}
```liquid
{{TAG_VALUE #name}}
```
{% endraw %}

A tag on the connection. Replace **#name** with the name of the tag. For example, if the tag is #owner.bob then edit the variable name as

{% raw %}
```liquid
{{TAG_VALUE #owner}}
```
{% endraw %}

This will be displayed as a comma separated list of the values for that tag. Tag names and values are assigned on the Connection Properties \| Tags.

## If there is no matching tag,

{% raw %}
```liquid
{{TAG_VALUE #name}}
```
{% endraw %}

will be replaced with the text

{% raw %}
```liquid
#name not found.
```
{% endraw %}

There are cases where additional variables are used in the Alarm Log \| Details column as defined in the Alarms Dialog. For example:

{% raw %}
```liquid
The data file {{SQLFiles.File}} ({{SQLFiles.path}}) in database {{SQLFiles.DBName}} is {{value}}% full..
```
{% endraw %}

The use of these variables is specific to the alarm they are used to describe. In the Alarms Dialog, you may copy and paste alarm descriptions including these variables from one severity to another. Further customized use of these variables is not recommended.


{% include links.html %}
