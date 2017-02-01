---
title: Spotlight Overview pages in Spotlight Cloud
tags: [overview_page]
keywords: overview page, drilldowns
summary: "A Spotlight overview page captures the performance of a single monitored connection. Flows and components are updated in real time to highlight obvious bottlenecks and problem areas and color coded to indicate when an alarm is raised."
sidebar: p_cloud_sidebar
permalink: cloud_monitoring_display_overview.html
folder: SpotlightCloud
---

## Open the Spotlight Overview page

Start with the [Connections Display][cloud_monitoring_display_connect]. Click on a Spotlight connection to show the Spotlight Overview page for that connection.

## Flows and components in an alarm state

If a component's color is other than green then the component is in an alarm state. Click on the component to show the alarms raised against the component on the the [Alarm List][cloud_monitoring_display_alarmlist].

## Flows and components tailored to the connection type

The Spotlight Overview page flows and components are tailored to the connection type.

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "overview_page_for_each_connection_type" %}
<li><a href="{{ page.url | prepend: site.baseurl}}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>




{% include links.html %}
