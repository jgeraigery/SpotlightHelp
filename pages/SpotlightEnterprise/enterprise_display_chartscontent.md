---
title: Spotlight chart content
summary: "The charted information is displayed in the body of the chart."
sidebar: p_enterprise_sidebar
permalink: enterprise_display_chartscontent.html
folder: SpotlightEnterprise
---


Hover the mouse pointer over a data point in the chart to display information about that point.

Hover the mouse pointer over an item (line or area) in the chart to display the name of the item.




## Maximize and restore charts {#maximizerestore}

Where a drilldown displays several charts you can choose to maximize one chart so it occupies the whole drilldown.

* To maximize a chart, right-click the chart and select **Maximize**.
* To restore the maximized chart to its normal size, right-click the chart and select **Restore**.

{% include note.html content="All charts are restored automatically when you view a different drilldown" %}

## Save to file

Right-click the chart and select **Save to file**.

Choices for file type include bitmap image and Windows metafile image.


## Copy to clipboard

1. Right-click on the chart and select **Copy to Clipboard**.
2. Paste from the clipboard to the desired destination – as an image within an image editor.

{% include note.html content="When you copy and paste the details of a zoomed chart to an image file, the image contains only the visible portion of the chart." %}


## Restore default settings

Remove changes to the chart style, scaling, legends and series.

1. Right-click on the data in the chart.
2. Select **Restore Default Settings**.
3. Click **Restore**.

## Configure properties - Chart page

Edit the visual properties of Spotlight charts.

To set chart properties

1. Right-click the chart and select **Properties \| Chart**.
2. Configure as appropriate:

Option | Description
-------|------------
Chart style | Select a style for the chart.
Arrange by | Applicable when the Chart style is set to Bar or Pie. Select to arrange the data in Name or Value order.
Include legend in chart | Select to show the legend associated with the chart. Not all charts have a legend.
Series are stacked | Applicable when the Chart style is set to Area. Select to plot the cumulative values of the different series. Clear to superimpose the different series on the same set of axes.
Manual scaling, Minimum value, Maximum value | Select Manual Scaling to set the scaling factor for the chart in the Minimum value and Maximum value fields. Clear Manual Scaling to accept Spotlight's default scaling of the chart.


## Configure properties - Filtering page

A Spotlight chart may contain multiple graphs representing separate data series from multiple data sources. You can filter the chart so that it shows only the data series that you want to see.

Spotlight supplies a set of filters that you can use ([Filter on the data series][enterprise_display_chartstoolbar.html#filteronadataseries]), but if none of the standard filters are suitable for your chart, you can design a custom filter.

To set a custom filter

1. Right-click the chart and select **Properties \| Filtering**.
2. Configure as appropriate:

Option | Description
-------|------------
Name | The display name for the chart.
Show all items | Select to display all current data series. For example, if a system has the multiple disks C:, D:, E:, and F:, the relevant disk usage chart displays the disk usage statistic for all four disks.
Show only the top items | Select to display the most significant data series. Select the number of data series to show from the associated drop down list.
Show the following items | Select to choose the data series to show. Select the data series to show from the associated list. Note also the associated Select all and Clear all buttons.

## View the data in a Spotlight grid

Right click on the chart body and select  **View as Grid**.


## View help on the chart.

Right click on the chart body and select  **What's This?**.

## Configure

For more information, see [Configure the appearance of Spotlight charts][enterprise_cfgclient_appearanceofcharts].


## Uable to collect data

If Spotlight is unable to collect the data required, Spotlight displays a small icon {% include inline_imageClient.html file="icon_refresherror.png" alt="Refresh Error" %} on the affected component. Click the icon to see more information about the problem.

{% include links.html %}
