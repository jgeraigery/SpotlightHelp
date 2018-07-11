---
title: Connections
summary: "List the connections monitored by the Diagnostic Server(s) in your organization."
sidebar: p_cloud_sidebar
permalink: cloud_account_connections.html
folder: SpotlightCloud
---


## Open the Connections page

1. From a web browser, open the Spotlight Cloud web site - [http://www.spotlightcloud.io](http://www.spotlightcloud.io).
2. Sign in using your Quest account. You have already signed in if you see your profile icon {% include inline_imageCloud.html file="tb-profile.png" alt="Account Profile" %} in the top right corner of the screen. If you see a {% include inline_imageCloud.html file="tb-signin.png" alt="Sign in" %} link then you need to sign in.
3. Click on your profile icon {% include inline_imageCloud.html file="tb-profile.png" alt="Account Profile" %}.
4. Select **Account Settings**. This opens **Your Profile** page.
5. Select **Connections** from the menu to the left of the screen.


## About the Connections page
The table in the middle of the screen lists the connections monitored by the Diagnostic Server(s) in your organization.

Column | Description
-------|------------
Color | Green when no alarms are raised against the connection. Other colors indicate an alarm has been raised against the connection; the color indicates the severity of the alarm raised or the highest severity of all the alarms raised.
Name | The name of the connection. Click on the link to open the [Spotlight Overview Page](cloud_display_overview) for the connection.
Type | The connection type (SQL Server, Windows Server etc)
Version | The version as applicable to the connection type.
Status | Enabled or Disabled.
Monitored by | The connection is monitored through this Diagnostic Server. Click on the link to open information about the [Diagnostic Server(s)](cloud_account_diagnosticserver) monitored through your organization.
Data Last Seen | The date data was last uploaded by the connection to Spotlight Cloud.
Host | Where known / monitored, the host of the connection. Click on the link to open the [Spotlight Overview Page](cloud_display_overview) for the connection host.


## Sort, Search / Filter, Paginate

* The table can be sorted in ascending or descending order by any column. Click on the column header to sort by that column. Click again to reverse the sort order.
* Use the search facility at the top of the page to search the names of the connections and Diagnostic Servers for matching text. Filter the results.
* Use the pagination facility bottom right of the table if the number of Diagnostic Servers in your organization takes up multiple pages.


{% include links.html %}
