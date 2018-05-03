---
title: Heath Check
summary: "Use the Health Check page to pinpoint and address key system health issues within your SQL Server infrastructure."
sidebar: p_cloud_sidebar
permalink: cloud_display_healthcheck.html
folder: CloudConnect
---


## Open the Heath Check page

1. From a web browser, open the Spotlight Cloud web site - [http://www.spotlightcloud.io](http://www.spotlightcloud.io).
2. Sign in using your Quest account. You have already signed in if you see your profile icon {% include inline_imageCloud.html file="tb-profile.png" alt="Account Profile" %} in the top right corner of the screen. If you see a {% include inline_imageCloud.html file="tb-signin.png" alt="Sign in" %} link then you need to sign in.
3. Click the **Monitoring** tab.
4. Select **Health Check** from the available display pages.

{% include imageCloud.html file="pane_selectpage_all.png" alt="From the dropdown menu select Health Check" %}


## About the Health Check page
Each of your SQL Server instances is checked and rated as having (red) one or more high priority issues, (yellow) one or more low priority issues or (green) no health issues.

From the pie chart you can see the number of SQL Server instances in each category. Hover the mouse over a pie color for more information. Click on a pie color to open the left menu. From the menu, click on a SQL Server instance to show the health issues for the SQL Server instance in more detail.

{% include imageCloud.html file="pane_healthcheck_menupie.png" alt="Health Check menu and pie" %}

## The Health Check page for a single SQL Server connection
Health Check issues fall into the following categories. Click on the category header to open / close Spotlight findings.

* Security
* Disaster Recovery
* Memory
* I/O
* Configuration

For each issue you can choose to **ignore** or click for more detailed information and analysis.

{% include imageCloud.html file="pane_healthcheck_instance.png" alt="Health Check for a SQL Server connection" %}


{% include links.html %}
