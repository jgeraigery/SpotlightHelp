---
title: Spotlight grids content
tags: [spotlight_grids]
keywords: grids, drilldowns
summary: "Right-click the table body for options."
sidebar: p_enterprise_sidebar
permalink: enterprise_display_gridscontent.html
folder: SpotlightEnterprise
---




## View as chart

If available, show the data in a Spotlight chart.

## What's this

Show help on using the data.

Icon | Description
{% include inline_imageClient.html file="tb_whatsthis_showme.png" alt="Refresh Error" %} | If available, click to show more numerical detail related to the Spotlight grid.


## Find...

Find text in the Spotlight grid.

Control | Description
--------|------------
Text to find | Enter or paste in the text you want to find.
Match case | Select to match the case of the text exactly. When selected a search for the string AbC will not find the string abc.
Match entire cell contents | Select to match the contents of the table cell exactly. When selected a search for the string Spot will not find the string Spotlight.
Up | Search upwards from the current location then stop.
Down | Search downwards from the current location then stop.
Search all columns | Search all columns of the table.
Search selected column only | Search only the highlighted column.
Find next | Find the next occurrence of the text in the grid.

{% include note.html content="The Find function may be of limited use in dynamic columns (Elapsed time is one example) whose values are continually updated." %}

## Save as...

Save the Spotlight grid to a file.

## Copy to clipboard

Copy the Spotlight grid to the clipboard then paste from the clipboard to the desired destination – as text within a text editor.

{% include tip.html content="You can select to copy the whole table, the selected row, column or cell." %}

## Restore default settings

To restore the default order to the column headings and word-wrapping settings:

1. Right-click on the data in the chart or grid.
2. Select **Restore Default Settings**.
3. Click **Restore**.


## Tree view

If available, this provides for the option of displaying the left most column of the Spotlight grid as a hierarchical tree structure. Use this icon to toggle between a simple text string list and the hierarchical tree structure.

The first column in a Spotlight grid may show data as a simple text string or (if available) a hierarchical tree structure. If the data can be shown in both formats, you can choose which view to use.

To show or hide trees in tables

Toggle tree view on/off

The images below show the same first column of a table in the two different formats.

 {% include inline_imageClient.html file="pane_grid_treeno.png" alt="Sample Grid no Tree" %}
 {% include inline_imageClient.html file="pane_grid_tree.png" alt="Sample Tree" %}

{% include note.html content="When you sort a table in tree view, the table is sorted first according to the highest level in the tree; the individual branches and sub-branches of the tree are sorted separately in the same order." %}



## Properties

### To freeze the first column

When selected the first column will remain visible while you scroll through the columns of the table:

Right-click the grid header and select Freeze First column.

### To word-wrap text

By default, Spotlight truncates text that is too long to fit in the space allocated to the column. To allow text to wrap onto multiple lines:

1. Right-click the data content of the grid and select **Properties \| Options**.
2. Select **Allow text to word-wrap onto multiple lines if it is wider than the column**


## Uable to collect data

{% include imageClient.html file="icon_refresherror.png" alt="Refresh Error" %}

If Spotlight is unable to collect the data required, Spotlight displays a small icon on the affected component. Click the icon to see more information about the problem.

{% include links.html %}
