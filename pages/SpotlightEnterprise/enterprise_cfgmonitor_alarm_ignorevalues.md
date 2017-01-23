---
title: The Ignore Values dialog
summary: "Some alarms can be configured to ignore certain values. For example, the Spotlight Backup Alarms can be configured to ignore certain databases."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_alarm_ignorevalues.html
id: 79
folder: SpotlightEnterprise
---


## From the Spotlight Client

1. Click **Configure \| Alarms**.
2. Select the connection or template to apply the alarm configuration to.
3. Double click on the alarm to Configure an alarm.
4. Clear the **Factory Settings** control so you can modify the settings for this alarm.
5. Click **values** in the sentence *Do not alarm for certain values* to open the Ignore values dialog.

## The Ignore Values dialog

### Ignore the following values when raising alarms

This is the list of values ignored when raising the alarm.

When you select a value on this list the value will be highlighted and listed in the **Value** field.

### Value

The current value is displayed in the **Value** field. You can **Replace**, **Add** or **Delete**.

Select the current value from the drop down menu, type the current value or highlight it from the list of values.

### Replace

Replace the value selected in the list with the current **Value**.

### Add

Add the current **Value** to the list of values ignored when raising the alarm.

### Delete

Remove the current **Value** from the list of values ignored when raising the alarm.

## Wildcard characters

You can use the following wildcards when specifying values to ignore.

\* | Represents any string including the null string.
? | Represents any single character.

For example, type "Database*" in the value field to ignore a series of databases named "Database01" through to "Database99".

Notes:

* The exclusion list is not case sensitive. Therefore, both [a-z] and [A-Z] match any letters. For example, [a-z] and [A-Z] work equally.
* “!” following “[“ is not treated as the special symbol that excludes following characters in the brackets, but treated as a single character “!”.

{% include tip.html content="While an alarm is raised you can set Spotlight to ignore the alarm for the current value or connection using Spotlight today, Alarms by time, Alarm log or What's This (Spotlight alarms)." %}


{% include links.html %}
