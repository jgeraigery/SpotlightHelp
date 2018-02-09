---
title: Alarms list from the Spotlight web site
summary: "List all alarms raised against the connection or connection view."
sidebar: p_cloud_sidebar
permalink: cloud_display_alarmlist.html
folder: CloudConnect
---

## Open the Alarms list

1. From a web browser, open the Spotlight web site - [http://www.spotlightessentials.com](http://www.spotlightessentials.com).
2. Sign in using your Quest account. You have already signed in if you see your profile icon {% include inline_imageCloud.html file="tb-profile.png" alt="Account Profile" %} in the top right corner of the screen. If you see a {% include inline_imageCloud.html file="tb-signin.png" alt="Sign in" %} link then you need to sign in.
3. Click the **Monitoring** tab.

Which connections do you want to show on the Alarms page? From the menu top of the Monitoring page, **All** indicates that the current page involves all connections. To reduce the number of connections on display, click **All**. From the menu that opens, select the required connection or connection group.

{% include imageCloud.html file="pane_selectdisplay_allheatmap.png" alt="All connections" %}

To show the Alarms page for the selected connections, click on the current page type (say the **Heatmap**). From the menu that opens, select **Alarms**.

{% include imageCloud.html file="pane_selectpage.png" alt="From the dropdown menu select Alarms" %}


## Alarms list
Use the arrow right of the column header to sort the list of alarms ascending or descending on any column. Hover the mouse over a column header to see a filter icon; use the filter icon to filter the list of alarms. Select an alarm to show detailed information on that alarm.

{% include imageCloud.html file="pane_alarmslist.png" alt="List of alarms on the Alarms page" %}


## Snooze / Acknowledge alarms
Select an alarm then click to [Snooze Alarm][cloud_alarm_snooze] or [Acknowledge Alarm][cloud_alarm_acknowledge].

To **Acknowledge** or **Snooze** multiple alarms, use Ctrl or Shift to select multiple alarms.


## Tell me about each alarm

Information about each alarm is documented under the connection type.

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "alarms_by_connection_type" %}
<li><a href="{{ page.url | remove_first:'/' }}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>



{% include links.html %}
