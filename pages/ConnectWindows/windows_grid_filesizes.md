---
title: File Sizes grid
last_updated: July 29, 2016
summary: "The File Sizes grid contains the following information for all files specified in the Files Options page."
sidebar: c_windows_sidebar
permalink: windows_grid_filesizes.html
id: Files.FilesGrid
folder: ConnectWindows
---



To open the Files Options page, on the Spotlight Overview page for the Windows Server connection, right-click the Files panel and select **Files Options**.

## File Name

The full pathname of the selected file.

## Current Size (MB)

The current size of the file, measured in megabytes.

## Max Size (MB)

The maximum size for this file as set in the **Files Options** page. Setting the maximum file size in Spotlight does NOT prevent the specified file from growing beyond this size. However, if the size of the file exceeds that maximum size, Spotlight raises a critical alarm.

## % Max Size

The current size of the file, measured as a percentage of the maximum size.

## Severity

The degree of urgency associated with the current size. The severity controls what action Spotlight takes. (For example, if the size of the file exceeds the maximum size, the severity becomes critical, and Spotlight raises a critical alarm.)

## File Exists

Whether or not the file exists at the specified location.



{% include links.html %}
