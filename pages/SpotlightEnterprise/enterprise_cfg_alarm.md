---
title: Configure an alarm
summary: "This dialog is opened from Configure | Alarms on request to configure an alarm."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfg_alarm.html
folder: SpotlightEnterprise
---


## Factory Settings

### Select

Return the settings for this alarm to the Factory Settings. These are the settings that were shipped with Spotlight.

### Clear

You can now modify the settings for this alarm.

## Disable this alarm

When selected this alarm will not be raised again for the connection / template selected on the Configure \| Alarms dialog.

{% include tip.html content="Only some alarms can be disabled." %}

## Alarm requires acknowledgment

### Select

You want to know that this alarm was raised even after its severity returns to normal. When the severity of the alarm returns to normal Spotlight continues to presence the alarm in Spotlight Today and the Spotlight Overview page until you acknowledge that you have seen this instance of the alarm.

### Clear

Spotlight removes the raised instance of the alarm from Spotlight Today and the Spotlight Overview page when the alarm severity returns to normal.

## Add and Delete keys

Key values can be added to some alarms. Where applied, the thresholds are set for each key independent of each other.

A key is a unique value that identifies a particular row in a collection. For example, database name is the key for Databases alarms. Take an example where the standard backup schedule for databases is weekly but one particular database is backed up monthly. You can configure a specific threshold for that database (in this scenario 30 days) independent of the default severity (in this scenario 7 days).

### Key Value list

A list of keys that have been configured for this alarm.

All alarms have a **Default Severity**.

Keys that have been added are listed here. Thresholds are applied independently to each key. Select the key to apply the thresholds to.

{% include tip.html content="You can use keys to configure alarms to ignore certain values. For more information, see Do not alarm for certain values." %}

### Add

Click to add keys. (Applicable to alarms that can be configured with keys.)

### Delete

Click to delete the selected key. (You cannot delete the **Default Severity**.)


## Configure thresholds / set the severity

Dependent on the alarm, configuration is applied by adjusting thresholds or selecting a severity from the severity list.

### This alarm is raised with increasing severity dependent on a numeric value.

Spotlight uses a threshold bar to illustrate the severity thresholds. For more information, see Severity thresholds.

{% include imageClient.html file="pane_alarms_thresholds.png" alt="This alarm is raised with increasing severity dependent on a numeric value." %}


### This alarm is raised to a single severity.

{% include imageClient.html file="pane_alarms_serverities.png" alt="This alarm is raised to a single severity." %}


#### Severity

 Select the severity to apply when the alarm is raised.

#### Message

Add message text to the Message field. Message text is displayed in the **Details** column of the **Alarm Log** when the alarm is raised. To include variables in the text see Alarms - Message Variables.

## Collect additional diagnostic information

### Select

Collect additional data in the Playback Database to assist you in resolving the root cause of the alarm. For more information, see Collect additional diagnostic information.

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "collect_additional_diagnostic_information" %}
<li><a href="{{ page.url | prepend: site.baseurl}}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>


### Clear

You may choose to turn the option off to conserve space in the Playback Database.

{% include note.html content="Not all alarms have the option to collect additional information." %}

## Do not raise an alarm for certain values

Click **Values** to specify the values that Spotlight should ignore when an alarm is raised. You can use wildcard characters when specifying values to ignore. For more information, see Do not alarm for certain values.

{% include note.html content="Not all alarms have this option." %}



{% include links.html %}
