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

Start with the [Connections Display][mobile_connections]. Tap on a Spotlight connection to show the Spotlight Overview page panels for that connection.

Android | iPhone
--------|-------
{% include inline_imageMobile.html file="tap_android-homepage-icon.png" alt="overview Android" %} | {% include inline_imageMobile.html file="tap_iOS-homepage-icon.png" alt="overview iPhone" %}

## About the Spotlight Overview page

### Panels

If a panel's color is other than green then at least one of the panel's components is in an alarm state. The panel is colored according to the severity of the highest alarm raised against a panel component. Tap the panel to show the panel's components.

{% include imageMobile.html file="screen_iOS-homepage.jpeg" %}

### Flows and components

If a component's color is other than green then the component is in an alarm state. Tap the component to show the alarms raised against the component.

{% include imageMobile.html file="screen_iOS-processes-screen.jpeg" %}

### Tailored to the connection type

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
