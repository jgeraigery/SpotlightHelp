---
title: Chart toolbar
tags: [spotlight_charts]
keywords: charts, drilldowns
summary: "Configure the way the chart presents information."
sidebar: p_enterprise_sidebar
permalink: enterprise_chartstoolbar.html
folder: SpotlightEnterprise
---




{% include note.html content="Individual toolbar buttons may not be available in all chart views." %}



## Toolbar icons

Icon | Description
-----|------------
{% include inline_imageClient.html file="tb_chart_zoom.png" alt="Zoom in on charts" %} | The Zoom (applied to the horizontal and vertical axes of the chart) determines the scale.
{% include inline_imageClient.html file="tb_chart_pan.png" alt="Pan over zoomed charts" %} | When you zoom in on a chart you can use the Pan tool to view other sections of the expanded chart.
{% include inline_imageClient.html file="tb_chart_type.png" alt="Set the chart view" %} | Select the style of chart that is appropriate to your needs.
{% include inline_imageClient.html file="tb_chart_filter.png" alt="Filter on the data series" %} | A Spotlight chart may contain multiple graphs representing data series from multiple data sources. You can filter the chart so that it shows only the data series that you want to see.


## Zoom in on charts

The Zoom (applied to the horizontal and vertical axes of the chart) determines the scale.

* You cannot zoom a Pie chart.
* When the chart is zoomed so that not all of a chart can be seen at the one time, the chart also displays scrollbars that allow you to choose the visible portion of the chart. For more information, see Pan over zoomed charts.
* Where a drilldown displays several charts you can choose to maximize one chart so it occupies the whole drilldown. For more information, see Maximize and restore charts.


You can zoom in on a section of a chart using one of the following methods:

### Use the magnifying glass

1. Click the magnifying glass.
2. Move the mouse pointer over the chart. (The pointer changes to a magnifying glass.)
3. One of the following:
    * Click on the chart. This centers the view on the chosen point and doubles the current zoom factor.
    * Click-and-drag the mouse to enclose the area that you want to magnify. The chart zooms to the size of the enclosed rectangle when the mouse button is released.

* To return the chart to its default size, right-click on the chart and select Unzoom.
* To switch temporarily from Zoom mode to Pan mode, hold down the Ctrl key.
* To zoom out, hold down the Shift key while clicking on the chart. This centers the view on the chosen point and halves the current zoom factor.


### Use the drop down menu

1. Click the down arrow next to the magnifying glass to open the drop-down menu.
2. Click a percentage option to zoom the chart horizontally AND vertically by that percentage

    –or–

Click a time option (where applicable) to zoom the horizontal axis of the chart to the specified time period, while resetting the vertical axis to the default value.


{% include note.html content="Time options are not available in chart views without a time axis (bar charts, for example)." %}



## Pan over zoomed charts

When you zoom in on a chart you can use the Pan tool in the chart toolbar to view other sections of the expanded chart.

To pan over a zoomed chart

1. Click {% include inline_imageClient.html file="tb_chart_pan.png" alt="Pan over zoomed charts" %}.
2. Move the mouse cursor over the chart. It will appear as a 'hand' icon.
3. Click-and-drag the mouse cursor across the chart to view other sections of the chart.

{% include tip.html content="To switch temporarily from Pan mode to Zoom mode, hold down the **Ctrl** key." %}

Where a drilldown displays several charts you can choose to maximize one chart so it occupies the whole drilldown. For more information, see Maximize and restore charts.


## Set the chart view

To change the style of chart

1. Click {% include inline_imageClient.html file="tb_chart_type.png" alt="Set the chart view" %}.
2. Select the style of chart that is appropriate to your needs.

Alternatively, right click on the chart and select **Properties**.


## Filter on the data series

A Spotlight chart may contain multiple graphs representing data series from multiple data sources. You can filter the chart so that it shows only the data series that you want to see.

To filter on the data series

1. Click {% include inline_imageClient.html file="tb_chart_filter.png" alt="Filter on the data series" %}.
2. Select as appropriate.


Option | Description
---------|------------
Show all items | Do not filter the contents of the chart.
Show top 5 items | Filter out all but the top 5 data series that appear in the chart.
Show top 10 items | Filter out all but the top 10 data series that appear in the chart.
Custom... | Create a custom filter from the available parameters. For more information, see Configure properties - Filtering page.



{% include links.html %}
