---
title: The Spotlight Report Viewer
keywords: reports
summary: "Spotlight reports are displayed in an external viewer."
sidebar: p_enterprise_sidebar
permalink: enterprise_display_reportviewer.html
id: 320
folder: SpotlightEnterprise
---

## Using the Report Viewer
From the Spotlight Client

1. Click **Reports** to show the reports that are available from this Spotlight Client.
2. Select a report from the [List of Reports][enterprise_display_reportsshipped].
3. If SQL Server authentication is required, enter the user and password details.
4. Fill in the input parameters. These vary but many require the start date, end date and connection name.
5. Click **View Report**.

### Modify the report criteria
Change reports by selecting a different report from the Report list at the top of the Spotlight Report Viewer. Check the input fields are still correct and click **View Report**.

If you change the report criteria (time frame or Connection Name), click **View Report** to see an updated version of the report.

### Save / Export
Save reports in PDF, or as an .xls (Microsoft Excel) file using the **Save** icon on the Report toolbar.

### Print, search, refresh
Print, search, and refresh reports using the Report toolbar.


## Can I customize the reports to my own criteria?
The Spotlight Report Viewer displays reports using SQL Server 2005 or 2008 Report Definition Language files (.rdl). You can build on the supplied reports or create your own reports. [Query the Spotlight Statistics Repository][enterprise_ssrquery]

## Where is the data? Can I customize the collection schedules?
Data is collected from the SQL Server instance then written to the Spotlight Statistics Repository.

You can customize the collection schedules in the Spotlight Client. [Configure Scheduling][enterprise_cfgmonitor_scheduling]

## Where are the report definition files?
The default location for the definition (rdl) files is in the Spotlight Client installation folder in the Plug-ins\Trending\Reports folder.

If you do not have write access to the Program Files folders listed above, you can create the following folder and use it as an alternative: <user>\Documents\Spotlight Reports

To set the location of your .rdl files in Spotlight:

1. Select **Reports**.
2. Right-click **Reports**.
3. Select **Settings**.
4. Navigate to the folder containing the rdl files you want to use.
5. Click **OK**.


{% include links.html %}
