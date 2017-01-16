---
title: Spotlight grids toolbar
tags: [spotlight_grids]
keywords: grids, drilldowns
summary: "Use the toolbar in the top right corner of the grid to configure the way the grid presents information."
sidebar: p_enterprise_sidebar
permalink: enterprise_display_gridstoolbar.html
folder: SpotlightEnterprise
---



## Toolbar icons

Icon | Description
-----|------------
{% include inline_imageClient.html file="tb_grid_find.png" alt="Find text" %} | Find text in the Spotlight grid.
{% include inline_imageClient.html file="tb_grid_save.png" alt="Save to file" %} | Save the Spotlight grid to a file.
{% include inline_imageClient.html file="tb_grid_clipboard.png" alt="Copy to clipboard" %} | Copy the Spotlight grid to the clipboard. Copy the whole table, the selected row, column or cell.
{% include inline_imageClient.html file="tb_grid_organizecolumns.png" alt="Show, hide and order columns" %} | Show or hide columns and choose the order in which to display columns.


## Find text

{% include inline_imageClient.html file="tb_grid_find.png" alt="Find text" %} Find text in the Spotlight grid.

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


## Save to file

{% include inline_imageClient.html file="tb_grid_save.png" alt="Save to file" %} Save the Spotlight grid to a file.

### Save as type

The choices include formatted text file and comma-delimited text file.

### Text encoding

Select the text encoding to use when saving the file.

Encoding | Description
---------|------------
ANSI | ANSI is the default choice. It supports only the character set used by Western European languages. Unsupported characters are converted to question marks.
UNICODE (UTF-16) | The 16-bit version of the Universal Character Set Transformation Format. This format is maintained by the Unicode Consortium [http://www.unicode.org/](http://www.unicode.org/), and provides the basis for processing, storage and interchange of text data in any language.
UNICODE (UTF-8) | The 8-bit version of the Universal Character Set Transformation Format.


## Copy to clipboard

{% include inline_imageClient.html file="tb_grid_clipboard.png" alt="Copy to clipboard" %} Copy the Spotlight grid to the clipboard then paste from the clipboard to the desired destination – as text within a text editor.

{% include tip.html content="You can select to copy the whole table, the selected row, column or cell." %}


## Show, hide and order columns

{% include inline_imageClient.html file="tb_grid_organizecolumns.png" alt="Show, hide and order columns" %} Show or hide columns and choose the order in which to display columns.

Control | Description
--------|------------
Available columns | Hidden columns.
Selected columns | Visible columns in the order they appear in the grid.
Add | Adds the columns selected in Available columns to the Selected columns list.
Add All | Adds all columns in the Available columns list to the Selected columns list.
Remove | Moves the columns selected in the Selected columns list to the Available columns list.
Remove All | Moves all columns in the Selected columns list to the Available columns list.
Move Up | Moves the selected columns in the Available columns list further up the list.
Move Down | Moves the selected columns in the Available columns list further down the list.

{% include tip.html content="To choose multiple columns in the Available columns and Selected columns lists, use the shortcut key combinations CTRL+click or SHIFT+click." %}

{% include links.html %}
