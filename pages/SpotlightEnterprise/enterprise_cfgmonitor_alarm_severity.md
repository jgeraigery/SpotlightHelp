---
title: Severity thresholds
summary: "For alarms that can be raised with increasing severity dependent on a numeric value, Spotlight uses a threshold bar to illustrate the severity thresholds."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_alarm_severity.html
folder: SpotlightEnterprise
---

{% include imageClient.html file="pane_alarms_thresholds.png" alt="This alarm is raised to a single severity." %}

## From the Spotlight Client

1. Click **Configure \| Alarms**.
2. Select the connection or template to apply the alarm configuration to.
3. Double click on the alarm to Configure an alarm.
4. Clear the **Factory Settings** control so you can modify the settings for this alarm.

## Add, remove, adjust severities

Use either the colored bar or the Severity table.

### Colored bar

{% include imageClient.html file="pane_alarms_severitybar.png" alt="This alarm is raised to a single severity." %}

To set thresholds via the colored bar:
1. Move the mouse pointer over the threshold between two severities until it appears as a split-bar pointer.
2. Click and drag the mouse to move the threshold to a new position. When you have completed the move, the change also appears in the Severity table.

### Severity table

To set thresholds via the severity table:

#### Severity

Select the severity to enable it. If the severity check box is cleared then this severity will be ignored.

#### Start / End

Click in the **Start** cell for each chosen severity. Enter the lower value for the threshold range. This is the value that, when reached, will trigger the severity.

Ensure the start value is lower than that for the low value for higher severity thresholds. A failure to be consistent when doing this may cause problems when alarms are raised.

#### Description

Enter an alarm description in the **Description** field. When the alarm is raised, the description appears in the Details column of the Alarm log and Spotlight today

You can use copy and paste to duplicate the description text from other severities in the table. To include variables in the text see Alarms - Message Variables.

## Add Severity

Click **Add Severity** to add a new entry to the Severity table.

{% include tip.html content="You can add an entry that has the same severity as an existing entry. By doing so, you can set more than one range of values for a specified severity." %}




{% include links.html %}
