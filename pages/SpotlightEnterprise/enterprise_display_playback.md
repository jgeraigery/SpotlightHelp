---
title: Playback in Spotlight Enterprise
tags: [playback]
keywords: playback
summary: "The Playback facility allows you to view events and data collected in the recent past on a Connection drilldown or Spotlight Today. Playback time to capture the event or moment in Spotlight as though it was happening in real time."
sidebar: p_enterprise_sidebar
permalink: enterprise_playback.html
folder: SpotlightEnterprise
---


View events and data collected in the recent past on Connection drilldowns or Spotlight today. Once a time is selected, the display of the Connection drilldown and Spotlight Today turns to that time.

## Steps

1. Select a connection from Monitored connections.
2. Select from the available options on the Monitor \| Playback ribbon tab.


Icon | Name | Description
-----|------|------------
{% include inline_imageClient.html file="tb_playback_playback.png" alt="Playback button" %} | Playback | Select an alarm or moment in time in the past to return to. Click Real Time to return to the present time.

Control | Description
--------|-------------
{% include inline_imageClient.html file="pane_playback_day.png" alt="Select the date" %}  | Select the date. Use the back and forward buttons to change the date.
{% include inline_imageClient.html file="pane_playback_time.png" alt="Select the time of day" %}  | Select the time of day. Press and hold to magnify the time scale. The time scale is colored according to the most severe alarm raised against the connection at that time.
{% include inline_imageClient.html file="pane_playback_alarm.png" alt="Alarms list" %}   | The alarms list shows alarms raised on the selected day. It scrolls to show those alarms raised at the given time. Select an alarm to playback to the time when the alarm was raised.


Icon | Name | Description
-----|-----------|------------------------
{% include inline_imageClient.html file="tb_playback_realtime.png" alt="Real time button" %}  | Real Time | Return to present time.
{% include inline_imageClient.html file="tb_playback_rewind.png" alt="Rewind butto" %} | Rewind | Go back in time. Click the associate arrow to define how far back in time to travel: 1 minute, 5 minutes, 10 minutes, 1 hour or 1 day.
{% include inline_imageClient.html file="tb_playback_skip.png" alt="Skip button" %} | Skip | Starting from the past, skip forward in time. Click the associate arrow to define how far forward to skip: 1 minute, 5 minutes, 10 minutes, 1 hour or 1 day.
{% include inline_imageClient.html file="tb_playback_play.png" alt="Play button" %} | Play | Starting from the past, step forward in time through the alarms in sequence. Click the associate arrow to define the speed of play.

 {% include note.html content="Playback data is not displayed for SQL Azure database connections." %}

 {% include tip.html content="On the Spotlight Overview page you can view the recent history of a single component." %}


## Configuration and deployment

Configuration and deployment | Description
-----------------------------|------------
Configure the Playback Database | Click to re-enter connection details to the Playback Database, create a new Playback Database or specify the number of days that data will be stored in the Playback Database. The number of days specified corresponds to the number of days of history available to Playback. The default is seven days. The minimum is two days.
Configure \| Scheduling  | Playback data is collected at scheduled intervals, in response to some alarms, and also while viewing a drilldown using the Spotlight client. This means that history data may not be available for a drilldown in Playback mode. You may want to set the rate at which data is collected.
Playback Database | The Playback Database is stored on SQL Server. Employ maintenance procedures and back up the Playback Database regularly.

{% include links.html %}
