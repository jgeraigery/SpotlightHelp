---
title: Spotlight Overview pages in Spotlight Mobile
tags: [overview_page]
keywords: overview, mobile
summary: "A Spotlight overview page captures the performance of a single monitored connection. Flows and components are updated in real time to highlight obvious bottlenecks and problem areas and color coded to indicate when an alarm is raised."
sidebar: p_mobile_sidebar
permalink: mobile_overview.html
folder: SpotlightMobile
---

## Open the Spotlight Overview page

Tap on a Spotlight Connection to open the Spotlight Overview page for that connection. For example:

* Tap on a Spotlight Connection on the [Heatmap][mobile_heatmap]
* Tap on a Spotlight Connection on the [Connections display][mobile_connections]

Tap the {% include inline_imageMobile.html file="tap_display_overview.png" alt="Overview" %} Spotlight Overview page icon to return to the Spotlight Overview page for the connection.

## About the Spotlight Overview page

### Panels

If a panel's color is other than green then at least one of the panel's components is in an alarm state. The panel is colored according to the severity of the highest alarm raised against a panel component. Tap the panel to show the panel's components.

{% include imageMobile.html file="screen_iOS-homepage.jpeg" %}

### Flows and components

If a component's color is other than green then the component is in an alarm state. Tap the component to show the alarms raised against the component.

If the component's color is green then tap the component for help on the component.

{% include imageMobile.html file="screen_iOS-processes-screen.jpeg" %}

### Tailored to the connection type

The Spotlight Overview page flows and components are tailored to the connection type.

<ul>
{% assign sorted_pages = (site.pages | sort: 'title') %}
{% for page in sorted_pages %}
{% for tag in page.tags %}
{% if tag == "overview_page_for_each_connection_type" %}
<li><a href="{{ page.url | remove_first:'/' }}">{{page.title}}</a></li>
{% endif %}
{% endfor %}
{% endfor %}
</ul>


{% include links.html %}
