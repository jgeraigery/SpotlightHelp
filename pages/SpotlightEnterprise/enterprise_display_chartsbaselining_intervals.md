---
title: Baselining Intervals
summary: "The number of intervals is the number of sampled data values used to create the baseline chart. Up to 12 intervals are used dependent on the historical data available."
sidebar: p_enterprise_sidebar
permalink: enterprise_display_chartsbaselining_intervals.html
folder: SpotlightEnterprise
---



The baseline chart is representative of a series of inverted box and whiskers plots. The median (statistical average) is the middle value sampled. The highest and lowest sampled data values are the outliers. The lines between the inner and outer quartiles represent the median between the outlier and sampled median.

The compare time selected for the baseline plot determines the sampled data used for the comparison. For example, say the compare time was set to 1 hour. Up to 12 intervals of data would be sampled, one hour apart, starting one hour before the current time. Say the compare time was set to 24 hours, then up to 12 intervals of data would be sampled, 24 hours apart from 24 hours before the current time.

{% include note.html content="Baselining is calculated on one data series at a time. Where the chart has multiple data series, click on a data series to select it. The selected data series is colored white. The data from the selected data series shows as a solid white line on the chart." %}

{% include note.html content="Data is sampled from the Playback Database. The shorter the compare time the more likely there will be more intervals - dependent on the amount of history stored in the playback database. Where there is insufficient data to plot the chart for the entire duration the chart will be plotted for the time that sufficient data is available." %}

{% include tip.html content="To enlarge the size of the baseline chart, right click the chart and select Maximize so the chart occupies the whole drilldown." %}

{% include links.html %}
