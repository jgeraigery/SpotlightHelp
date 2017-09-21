---
title: The Spotlight Report Viewer
keywords: reports
summary: "Generate Spotlight Reports from within the Spotlight Client using the Spotight Report Viewer."
sidebar: p_enterprise_sidebar
permalink: enterprise_display_reportviewer.html
id: 320
folder: SpotlightEnterprise
---

## Using the Report Viewer
From the Spotlight Client

1. Click **Reports** to show the reports that are available from this Spotlight Client.
3. Select a report. [Default Reports][enterprise_display_reportsshipped] are shipped with Spotlight. Reports that you create are listed under **Custom Reports**.
3. If SQL Server authentication is required, enter the user and password details.
4. Fill in the input parameters. These vary but many require the start date, end date and connection name.
5. Click **View Report**.


### Save / Export
Save reports in PDF, or as an .xls (Microsoft Excel) file using the **Save** icon on the Report toolbar.

### Print, search, refresh
Print, search, and refresh reports using the Report toolbar.

### Generate a different report / change the input parameters
To generate a different report, select the report from the Report list at the top of the Spotlight Report Viewer. Update the input fields if required then click **View Report**.

If you change the report criteria (time frame or Connection Name) you must click **View Report** in order to see an updated version of the report.



## How can I customize the reports to my own criteria or create my own reports?
The Spotlight Client report viewer displays reports created by SQL Server Data Tools or Business Intelligence Development Studio. Data is queried from the Spotlight Statistics Repository. For information on how to query the Spotlight Statistics Repository for data, see [Query the Spotlight Statistics Repository][enterprise_ssrquery].

Default Reports are stored in the Spotlight Client installation folder

```
Plug-ins\Trending\SSRS
```

Store Custom Reports (the reports you create) on the same computer as the Spotlight Client in

```
 \<user\>\Documents\Spotlight Reports
```




{% include links.html %}
