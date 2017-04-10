---
title: Add alarms to custom counters
summary: "Use these instructions to add alarms to custom counters that return a numeric value, so that you are alerted when the counter values exceed their thresholds."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_alarm_customcounters.html
folder: SpotlightEnterprise
---

## Configure \| Custom Counters
Prior to following these instructions, ensure you [Configure \| Custom Counters][enterprise_cfgmonitor_customcounters].

## From the Spotlight Client

1. Click **Configure \| Alarms**.
   {% include imageClient.html file="tb_config_alarms.png" alt="Configure Alarms" %}
2. Select the connection or template to apply the alarm configuration to.
3. Double click on the **Custom Counters** alarm appropriate to the connection type (SQL Custom Counters or Windows Custom Counters). The dialog to **Configure an alarm** opens.

## Fill in the Configure an alarm dialog

### Clear Factory Settings
Clear the **Factory Settings** control so you can modify the settings for this alarm.

### Add a key value
Click **Add** to add a key value. In the **Add Key dialog**, select or type the key value (the Custom Counter you want to alarm on).

### Add severities to this key value.

1. Ensure this key value is selected.
2. Click **Add Severity**. Select the severity level to apply. Enable the new severity.
3. Use either the colored bar or the Severity table to set thresholds. For more information, see [Severity thresholds][enterprise_cfgmonitor_alarm_severity].

### Enter an alarm description
Enter an alarm description in the **Description** field. When the alarm is raised, the description appears in the **Details** column of the Alarm log and Spotlight today and the SQL Server \| Overview page or Windows Server \| Overview page when you hover the mouse over the **Custom Counters** button.

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
