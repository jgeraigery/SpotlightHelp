---
title: Spotlight grid content
tags: [spotlight_grids]
keywords: grids, drilldowns
summary: "Right-click over the body content of a Spotlight grid for options."
sidebar: p_enterprise_sidebar
permalink: enterprise_display_gridscontent.html
folder: SpotlightEnterprise
---




## View as chart

Show the data in a Spotlight chart. Not all grids have this option.

## What's this

Show help.

Icon | Description
-----|------------
{% include inline_imageClient.html file="tb_whatsthis_showme.png" alt="Refresh Error" %} | If available, click to show more numerical detail related to the Spotlight grid.


## Find...

Find text in the Spotlight grid.

Control | Description
--------|------------
Text to find | Enter or paste in the text you want to find.
Match case | Select to match the case of the text exactly. When selected, a search for the string *AbC* will not find the string *abc*.
Match entire cell contents | Select to match the contents of the table cell exactly. When selected, a search for the string *Spot* will not find the string *Spotlight*.
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

Restore the default order to the column headings and word-wrapping settings.

1. Right-click on the data in the chart or grid.
2. Select **Restore Default Settings**.
3. Click **Restore**.


## Tree view {#treeview}

Display the left most column of the Spotlight grid as a hierarchical tree structure. The images below show the same first column of a table in the two formats: a simple text string and a hierarchical tree structure.

Toggle the tree view on/off. Not all grids have this option.

 {% include inline_imageClient.html file="pane_grid_treeno.png" alt="Sample Grid no Tree" %}
 {% include inline_imageClient.html file="pane_grid_tree.png" alt="Sample Tree" %}

{% include note.html content="When you sort a table in tree view, the table is sorted first according to the highest level in the tree; the individual branches and sub-branches of the tree are sorted separately in the same order." %}



## Freeze First Column

When **Freeze First column** is selected, the first column will remain visible while you scroll through the columns of the table.



## Unable to collect data

{% include imageClient.html file="icon_refresherror.png" alt="Refresh Error" %}

If Spotlight is unable to collect the data required, Spotlight displays a small icon on the affected component. Click the icon to see more information about the problem.

{% include links.html %}
