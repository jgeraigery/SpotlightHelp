---
title: Spotlight Overview pages in Spotlight Enterprise
tags: [overview_page]
keywords: overview page, drilldowns
summary: "A Spotlight overview page captures the performance of a single monitored connection. Flows and components are updated in real time to highlight obvious bottlenecks and problem areas and color coded to indicate when an alarm is raised."
sidebar: p_enterprise_sidebar
permalink: enterprise_display_overview.html
folder: SpotlightEnterprise
---


## Open the Spotlight Overview page

From the Spotlight Client, click on a connection from the left [Connections display][enterprise_connect_display] to open the Spotlight Overview page.

{% include tip.html content="There are other ways to open the Spotlight Overview page. From the Heatmap, left click on a connection to open the Spotlight Overview page for that connection." %}

## About the Spotlight Overview page

### Flows and components

The Spotlight Overview page is made up of flows and components.

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

### Show a basic description of the component.

Hover the mouse over the component

### Show a detailed description of the component.

Left click on the component

### Alarms and component color

If a Spotlight Overview page component's color is other than green then the component is in an alarm state. Click on the component for help to resolve the alarm.

### Unable to collect data

If Spotlight is unable to collect the data required, Spotlight displays a small icon {% include inline_imageClient.html file="icon_refresherror.png" alt="Refresh Error" %} on the affected component. Click the icon to see more information about the problem.

{% include note.html content="During a planned outage, all Spotlight Overview page controls are disabled except Status. A Monitored Server - Planned Outage alarm is raised against the Status control. See [Planned Outages][enterprise_connect_plannedoutage]." %}




## What's This?

TO show help on a Spotlight Overview page component, right click on the component and select **What's This?**.

Icon | Description
-----|------------
{% include inline_imageClient.html file="tb_whatsthis_showme.png" alt="Show Me" %} | If available, click to show more numerical detail related to the Spotlight Overview page component.
{% include inline_imageClient.html file="tb_whatsthis_diagnose.png" alt="Diagnose" %} | If alarms have been raised against the component then What's This? provides assistance in resolving the alarms.


The behavior of What's This is configurable. For more information, see [Home page click action][enterprise_cfgclient_overviewpageclickaction].

## Show History

Right click on a Spotlight Overview page component and select **Show History** to show the component's history in a popup chart.

Use the chart toolbar to zoom and maximize the view. Help on the charts toolbar provides more information on the zoom feature: [Spotlight Charts Toolbar][enterprise_display_chartstoolbar].

Right-click the chart to set the time frame.

For more historical views see [Playback][enterprise_display_playback].

## Show Details

Right click on a Spotlight Overview page component and select **Show Details** to open a Spotlight drilldown page made up of [grids][enterprise_display_grids] and [charts][enterprise_display_charts] that further details the data related to this Spotlight Overview page component.

## Copy to Clipboard

Right click on a Spotlight Overview page component and select **Copy to Clipboard** to copy numeric data associated with the component to the clipboard. Paste from the clipboard to the desired destination –  as text within a text editor.

{% include note.html content="When you copy and paste the details of a zoomed chart to an image file, the image contains only the visible portion of the chart. When you paste the details to a text file, the pasted text includes the details of the entire chart, not only of the visible section." %}

{% include links.html %}
