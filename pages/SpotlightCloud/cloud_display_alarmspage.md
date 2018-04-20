---
title: Alarms page from the Spotlight Cloud web site
summary: "Use the Alarms page to comprehensively inquire into all outstanding alarms."
sidebar: p_cloud_sidebar
permalink: cloud_display_alarmspage.html
folder: CloudConnect
---


{% include imageCloud.html file="pane_alarmspage.png" alt="The Alarms page" %}


## How to open the Alarms page

1. From a web browser, open the Spotlight Cloud web site - [http://www.spotlightcloud.io](http://www.spotlightcloud.io).
2. Sign in using your Quest account. You have already signed in if you see your profile icon {% include inline_imageCloud.html file="tb-profile.png" alt="Account Profile" %} in the top right corner of the screen. If you see a {% include inline_imageCloud.html file="tb-signin.png" alt="Sign in" %} link then you need to sign in.
3. Click the **Monitoring** tab.
4. Select **Alarms** from the available display pages.

{% include imageCloud.html file="pane_selectpage_all.png" alt="From the dropdown menu select Alarms" %}


## Alarms summary
From the summary you can see the number of alarms raised of each severity. You can search for text within the alarms list. To page through multiple pages of alarms, click **Next**.

{% include imageCloud.html file="pane_alarmspage_summary.png" alt="Summary of raised alarms" %}

{% include tip.html content="By default snoozed alarms are not shown. Click **Show Snoozed** to show snoozed alarms." %}

{% include tip.html content="To **Acknowledge** or **Snooze** multiple alarms, select those alarms on the list. Use Ctrl or Shift to select multiple alarms." %}


## Alarms list
Use the arrow right of the column header to sort the list of alarms ascending or descending on any column. Hover the mouse over a column header to see a filter icon; use the filter icon to filter the list of alarms. Select an alarm to show detailed information on that alarm.

{% include imageCloud.html file="pane_alarmspage_listofalarms.png" alt="List of alarms on the Alarms page" %}


## Select an alarm
Spotlight Cloud shows a description of the alarm. Click **Acknowledge** to acknowledge the alarm. Click **Snooze** to snooze the alarm.

{% include imageCloud.html file="pane_alarmspage_selectedalarm.png" alt="Selected alarm" %}


## Color and severity
Alarm severity is color coded throughout Spotlight Cloud.

Default Color | Severity | Description
--------------|----------|------------
{% include inline_imageClient.html file="icon_alarm_green.png" alt="Normal color" %}  | Normal | No alarms raised.
{% include inline_imageClient.html file="icon_alarm_blue.png" alt="Information color" %}  | Information | An information alarm has been raised.
{% include inline_imageClient.html file="icon_alarm_yellow.png" alt="Low color" %}  | Low | A low severity alarm has been raised.
{% include inline_imageClient.html file="icon_alarm_orange.png" alt="Medium color" %}  | Medium | A medium severity alarm has been raised.
{% include inline_imageClient.html file="icon_alarm_red.png" alt="High color" %} | High | A high severity alarm has been raised.

{% include links.html %}
