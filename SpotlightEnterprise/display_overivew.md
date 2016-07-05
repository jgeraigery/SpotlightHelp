---
title: Spotlight Enterprise Overview pages
tags: [overview_page]
keywords: overview page, drilldowns
summary: "A Spotlight overview page captures the performance of a single monitored connection. Flows and components are updated in real time to highlight obvious bottlenecks and problem areas and color coded to indicate when an alarm is raised."
sidebar: p_enterprise_sidebar
permalink: /enterprise_overview/
---


## Open the Spotlight Overview page

From the left Connections pane, click on the connection. Click on the connection.

{% include tip.html content="There are many ways to open the Spotlight Overview page. From the Heatmap, left click on a connection to open the Spotlight Overview page for that connection." %}


## Flows and Components

Each Spotlight home page component has various associated statistics.

## Description of flows and components

Action | Description
-------|------------
Hover the mouse over the component | Show a basic description of the component.
Left click on the component | Show a detailed description of the component. If the component is in an alarm state
Right click on the component | Select from the various options.
![Refresh Error]({{ "/imagesClient/icon_refresherror.png" | prepend: site.baseurl }}) | If Spotlight is unable to collect the data required, Spotlight displays a small icon  on the affected component. Click the icon to see more information about the problem.

{% include note.html content="During a planned outage, all home page controls are disabled except Status. A Monitored Server - Planned Outage alarm is raised against the Status control. For more information, see Configure \| Planned Outage." %}

## Component color

If the component's color is other than green then the component is in an alarm state. Click on the component for help to resolve the alarm. For more information, see What's this?.

Connection drilldowns are tailored to the connection type.


## What's This?

Right click on the Spotlight Overview Page component and select **What's This?**.

Show help on the component.

Icon | Description
-----|------------
![Show Me]({{ "/imagesClient/tb_whatsthis_showme.png" | prepend: site.baseurl }}) | If available, click to show more numerical detail related to the Spotlight home page component.
![Diagnose]({{ "/imagesClient/tb_whatsthis_diagnose.png" | prepend: site.baseurl }}) | If alarms have been raised against the component then What's This? provides assistance in resolving the alarms.

The behavior of What's This is configurable. For more information, see Home page click action.

## Show History

Right click on the Spotlight Overview Page component and select **Show History**.

Show the component's history in a popup chart.

Use the chart toolbar to zoom and maximize the view. For more information, see Zoom in on charts.

Right-click the chart to set the time frame.

For more historical views see Playback

## Show Details

Right click on the Spotlight Overview Page component and select **Show Details**.

Open a Spotlight drilldown page with more numeric detail related to this Spotlight Overview Page component.

## Copy to Clipboard

Right click on the Spotlight Overview Page  component and select **Copy to Clipboard**.

Copy numeric data associated with the component to the clipboard. Paste from the clipboard to the desired destination –  as text within a text editor.

{% include note.html content="When you copy and paste the details of a zoomed chart to an image file, the image contains only the visible portion of the chart. When you paste the details to a text file, the pasted text includes the details of the entire chart, not only of the visible section." %}
