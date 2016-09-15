---
title: Add alarms to custom counters
summary: "Use these instructions to add alarms to custom counters that return a numeric value, so that you are alerted when the counter values exceed their thresholds."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfg_alarm_customcounters.html
folder: SpotlightEnterprise
---

Prior to following these instructions, ensure you Configure \| Custom Counters.

## From the Spotlight Client

1. Click **Configure \| Alarms**.
2. Select the connection or template to apply the alarm configuration to.
3. Double click on the **Custom Counters** alarm appropriate to the connection type (SQL Custom Counters or Windows Custom Counters). The dialog to Configure an alarm opens.
4. Clear the **Factory Settings** control so you can modify the settings for this alarm.
5. Click **Add** to add a key value.
        a. In the Add Key dialog, select or type the key value (the Custom Counter you want to alarm on).
6. Add severities to this key value.
        a.Ensure this key value is selected.
        b. Click **Add Severity**. Select the severity level to apply. Enable the new severity.
        c. Use either the colored bar or the Severity table to set thresholds. For more information, see Severity thresholds.
7. Enter an alarm description in the Description field. When the alarm is raised, the description appears in the Details column of the Alarm log and Spotlight today and the SQL Server \| Overview page or Windows Server \| Overview page when you hover the mouse over the **Custom Counters** button.

To include the key name and current value in the description, use the following syntax:

{% raw %}
```liquid
{{key}} = Custom counter name

{{value}} = Custom counter value
```
{% endraw %}

Example:

{% raw %}
```liquid
{{key}} has a value of {{value}}
```
{% endraw %}


{% include links.html %}
