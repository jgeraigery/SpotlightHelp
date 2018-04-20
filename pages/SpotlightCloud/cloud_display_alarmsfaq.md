---
title: Alarms FAQ on the Spotlight Cloud web site
tags: [acknowledge]
summary: "Learn more about acknowledge, snooze and configure. Learn more about the alarms that can be raised for each connection type."
sidebar: p_cloud_sidebar
permalink: cloud_display_alarmsfaq.html
folder: CloudConnect
---



## Is there a list of all alarms that can be raised for Spotlight Cloud connections?
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

## Acknowledge
Alarms critical to your operation can be configured to remain on view until they are acknowledged.

### How to acknowledge alarms
Acknowledge alarms from the [Alarms panel][cloud_display_alarmspanel] or the [Alarms page][cloud_display_alarmspage].

{% include tip.html content="Use the [Alarms page][cloud_display_alarmspage] to acknowledge multiple alarms in a single operation." %}


### How to configure alarms to require acknowledgment

{% include note.html content="In a Spotlight Enterprise deployment, use a Spotlight Client to configure an alarm to require acknowledgment. The Spotlight Cloud web site does not have the facility to configure a Spotlight Enterprise deployment." %}


## Snooze
To snooze an alarm is to temporarily remove the visual alert associated with an alarm.

Snoozed alarms are not included in the overall severity for a connection. Snoozed alarms do not perform any associated Alarm Actions (such as sending notification emails).

### How to show snoozed alarms
By default snoozed alarms are hidden in Spotlight Cloud.

{% include imageCloud.html file="pane_alarmspage_showsnoozedoff.png" alt="Show Snoozed Off" %}

Show snoozed alarms from the [Alarms page][cloud_display_alarmspage]. Select **Show Snoozed**.

{% include imageCloud.html file="pane_alarmspage_showsnoozedon.png" alt="Show Snoozed On" %}

### How to snooze alarms
Snooze alarms from the [Alarms panel][cloud_display_alarmspanel] or the [Alarms page][cloud_display_alarmspage].

{% include tip.html content="Use the [Alarms page][cloud_display_alarmspage] to snooze multiple alarms in a single operation." %}


## Configure Alarms
In a Spotlight Enterprise deployment, use a Spotlight Client to configure an alarm. The Spotlight Cloud web site does not have the facility to configure a Spotlight Enterprise deployment.

{% include links.html %}
