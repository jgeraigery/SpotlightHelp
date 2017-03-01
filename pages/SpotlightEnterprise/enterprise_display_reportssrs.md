---
title: SQL Server Reporting Services
keywords: reports
summary: "Spotlight Reports can be deployed to SQL Server Reporting Services where they can be accessed via a web browser."
sidebar: p_enterprise_sidebar
permalink: enterprise_display_reportssrs.html
id: 320
folder: SpotlightEnterprise
---

## Deploy the reports to SQL Server Reporting Services

In order to access Spotlight Reports via your web browser you first need to deploy reports to SQL Server Reporting Services.

SQL Server Reporting Services 2008 and above is supported.

{% include note.html content="To complete these steps you need report server administrator privileges." %}

1. Open the Business Intelligence Development Studio. This is a Microsoft product distributed with SQL Server.
2. Select **File \| Open \| Project / Solution**.
3. Select the project **SoSSE Reports.rptproj** in the Spotlight Client installation folder in the **Plug-ins\Trending\SSRS** folder.
4. Right click **SoSSE Reports \| Properties**.
5. Change the **Target Server URL** to your reporting server.
6. Double click **Shared Data Sources \| Spotlight Statistics Repository**.
7. Edit the Connection String:
   * Update the **Data Source**.
   * Update the database name if it has changed from the default.
8. Right click **SoSSE Reports \| Deploy**.

## How can I customize the Default Reports?
The definition (rdl) files and the project file **SoSSE Reports.rptproj** are in the Spotlight Client installation folder in the **Plug-ins\Trending\SSRS** folder.

1. Copy the rdl files and project file to a folder outside of the Spotlight Client installation folder.
2. Rename the copied reports (the rdl files).
3. Use the Business Intelligence Development Studio to customize the reports.
4. Deploy the cusotmized reports to SQL Server Reporting Services.

## How can I create new reports?
You can add new reports to the project **SoSSE Reports.rptproj** and then deploy those reports to SQL Server Reporting Services.


{% include links.html %}
