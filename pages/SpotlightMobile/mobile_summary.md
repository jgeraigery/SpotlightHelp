---
title: Spotlight Mobile Summary
summary: "Spotlight Mobile monitoring features include a Heatmap, alarm list, alarm details and the ability to snooze and acknowledge alarms."
sidebar: p_mobile_sidebar
permalink: mobile_summary.html
folder: SpotlightMobile
---


## Monitoring screen

Monitoring screen | Icon | Description
----------------|---------|--------|------------
[Heatmap][mobile_heatmap] | {% include inline_imageMobile.html file="tap_display_heatmap.png" alt="Heatmap" %} | The Heat Map organizes connections based on the comparative number and severity of their alarms. Connections with the most alarms raised against them are given the most surface area.
[Alarm list][mobile_alarmlist] | {% include inline_imageMobile.html file="tap_display_alarms.png" alt="Alarms" %} | List the alarms currently raised against a connection or connection view. Tap an alarm for more details.  
[Spotlight overview page][mobile_overview] | {% include inline_imageMobile.html file="tap_display_overview.png" alt="Overview" %} | Show the Spotlight overview page for the connection.

## Other screens / action

Screen / Action | Android | iPhone | Description
----------------|---------|--------|------------
[Connections and connection views][mobile_connections] | {% include inline_imageMobile.html file="tap_android-connection-nav-icon.png" alt="Connections Android" %} | {% include inline_imageMobile.html file="tap_iOS-connection-nav-icon.png" alt="Connections iPhone" %} | Access the views of your enterprise: heatmaps, alarm lists and connection views. Create new Heatmap or Alarm list views.
[Sort / Group Alarms][mobile_alarmlist] | {% include inline_imageMobile.html file="tap_android-sort-icon.png" alt="Sort Android" %} | {% include inline_imageMobile.html file="tap_iOS-sort-group-alarms.png" alt="Sort iPhone" %} | Sort or group alarms on the Alarm List. Sort by date or severity. Group by server, severity or alarm.
[Acknowledge Alarm][mobile_alarm_acknowledge] | {% include inline_imageMobile.html file="tap_android-ack-icon.png" alt="Ack Android" %} | {% include inline_imageMobile.html file="tap_Ack-button-iOs.png" alt="Ack ios" %} | Acknowledge an instance of an alarm requiring acknowledgment.
[Snooze Alarm][mobile_alarm_snooze] | {% include inline_imageMobile.html file="tap_android-snooze-icon.png" alt="Snooze Android" %} | {% include inline_imageMobile.html file="tap_iOS-snooze-icon.png" alt="Snooze iPhone" %} | Temporarily remove the visual alert associated with an alarm.  
[Playback][mobile_playback] | {% include inline_imageMobile.html file="tap_playback-icon_iphone.png" alt="Playback" %} | {% include inline_imageMobile.html file="tap_playback-icon_iphone.png" alt="Playback" %} | Reproduce the Spotlight overview page for a date and time from the recent past.
[Settings][mobile_settings] | {% include inline_imageMobile.html file="tap_android-settings-icon.png" alt="Settings Android" %} | {% include inline_imageMobile.html file="tap_iOS_settings_icon.png" alt="Settings iPhone" %} |  Configure Spotlight Mobile.
[Profile][mobile_profile] | {% include inline_imageMobile.html file="tap_android-users-profile-icon.png" alt="Profile Android" %} | {% include inline_imageMobile.html file="tap_iOS-users-profile-icon.png" alt="Profile iPhone" %} | Show / change the current user. This is applicable where more than one Spotlight Cloud user has signed in to Spotlight Mobile.
[Refresh][mobile_refresh] | {% include inline_imageMobile.html file="tap_android-refresh-icon.png" alt="Refresh Android" %} | {% include inline_imageMobile.html file="tap_iOS-refresh-icon.png" alt="Refresh iPhone" %} | Refresh the screen. The time and date of the last refresh is on display. From time to time the refresh button may be grayed out (disabled).


## Color

The alarm, connection or connection view is colored according to the most severe current alarm.

Default Color | Severity | Description
--------------|----------|------------
{% include inline_imageMobile.html file="icon_alarm_green.png" alt="Normal color" %} | Normal | No alarms are raised against this connection.
{% include inline_imageMobile.html file="icon_alarm_blue.png" alt="Information color" %} | Information | At least one information alarm is raised against this connection. No other alarms are raised.
{% include inline_imageMobile.html file="icon_alarm_yellow.png" alt="Low color" %} | Low | At least one low severity alarm is raised against this connection. No high or medium severity alarms are raised.
{% include inline_imageMobile.html file="icon_alarm_orange.png" alt="Medium color" %} | Medium | At least one medium severity alarm is raised against this connection. No high severity alarms are raised.
{% include inline_imageMobile.html file="icon_alarm_red.png" alt="High color" %} | High | At least one high severity alarm is raised against this connection.

{% include links.html %}
