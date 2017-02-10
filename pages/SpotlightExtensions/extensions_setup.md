---
title: Download and Setup Spotlight Extensions for SQL Server
tags: [setup]
keywords: setup, install
summary: ""
sidebar: p_extensions_sidebar
permalink: extensions_setup.html
folder: SpotlightExtensions
---



## Download and install Spotlight Extensions

1. Confirm an appropriate SQL Server Management Studio is installed and other requirements are met. See [Components and Requirements][extensions_requirements].
2. [Download Spotlight Extensions](https://www.spotlightessentials.com/download/register).
3. Run the Spotlight Extensions installer.


## Get Spotlight Cloud credentials
A Spotlight Cloud account is required to monitor your SQL Server connections. Create a Spotlight Cloud account if you do not already have one. Do this at the [Spotlight web site](https://www.spotlightessentials.com/home/SignUp).

{% include tip.html content="If there are many Spotlight Cloud accounts in your organization, see also [Spotlight Cloud \| Organizations][cloud_settings_organizations]." %}


## Configure Spotlight Extensions to upload performance data to the Spotlight Cloud

1. Open SQL Server Management Studio.
2. From the **Spotlight** menu, select **Spotlight Extensions**.

   {% include imageExtensions.html file="ssms-diagram1.png" alt="Start your SSMS application" %}

3. When directed, enter your Spotlight Cloud credentials. username and password.

   {% include imageExtensions.html file="ssms-diagram2.jpg" alt="New Connection" %}


## Add connections for data collection and analysis

From within SQL Server Management Studio:

1. From the **Spotlight** menu, select **Connections**.
2. Click the **New Connection** button.
3. Supply authenticaion details to connect to the SQL Server.
4. Click **Test** to make sure the details are correct.
5. Once authenticated, press **Save**.

{% include note.html content="To edit connection details, select the connection and click **Configure Connection**." %}

{% include links.html %}
