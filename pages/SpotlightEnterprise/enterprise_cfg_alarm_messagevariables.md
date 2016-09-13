---
title: Alarms - Message Variables
summary: "These variables provide useful information in describing an alarm. Message variables are used in the Alarm Action Dialog and the Details column of the Alarm log. The text in the Alarm Log | Details column is defined and can be modified in Configure an alarm."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfg_alarm_messagevariables.html
folder: SpotlightEnterprise
---

As an example, the default Details text displayed when the CPU - Individual CPU Usage alarm is raised is Average utilization of processor {{key}} is {{value}}%.

Variable | Variable Name | Description
---------|---------------|------------
Connection Name | {{CONNECTION_NAME}} | The name of the connection the alarm was raised on.
Message | {{MESSAGE}} | The error message from the alarm.
Alarm Name | {{RULE_NAME}} | The name of the alarm.
Severity | {{SEVERITY}} | The severity of the raised alarm.
Time | {{TIME}} | The time the alarm was raised.
Value | {{value}} | The value that will trigger the alarm. For example in a CPU alarm this would be the % CPU that is measured. This can be prefixed with int: (as in {{int:value}}) to force the value to be displayed as an integer.
Key Value | {{key}} | The value of the key in the collection. Some collections are multi-valued and have a key that differentiates the data. For example in the database backup alarm it is the database name. This field only makes sense where the collection is multi-valued. By default this variable is always included in the alarm text for collections that are multi-valued.
Tag Value | {{TAG_VALUE #name}} | A tag on the connection. Replace #name with the name of the tag. For example, if the tag is #owner.bob then edit the variable name as {{TAG_VALUE #owner}}. This will be displayed as a comma separated list of the values for that tag. Tag names and values are assigned on the Connection Properties \| Tags.

Note: If there is no matching tag, {{TAG_VALUE #name}} will be replaced with the text #name not found.


There are cases where additional variables are used in the Alarm Log \| Details column as defined in the Alarms Dialog. For example: The data file {{SQLFiles.File}} ({{SQLFiles.path}}) in database {{SQLFiles.DBName}} is {{value}}% full.. The use of these variables is specific to the alarm they are used to describe. In the Alarms Dialog, you may copy and paste alarm descriptions including these variables from one severity to another. Further customized use of these variables is not recommended.


{% include links.html %}
