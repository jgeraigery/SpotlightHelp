---
title: Custom views
keywords: sample
summary: "A Spotlight display (Heat map, Spotlight today, Alarms by time or Alarm log) can be filtered to the connections in the custom view. Create as many custom views as makes sense to your enterprise."
sidebar: p_enterprise_sidebar
permalink: enterprise_connect_customviews.html
folder: SpotlightEnterprise
---



## Add a custom view

Click {% include inline_imageClient.html file="tb_connections_addcustomview.png" alt="Add Custom View" %} **Add Custom View** to open the [New connection view properties dialog][enterprise_connect_newconnectionviewproperties].

## Add / remove connections from a custom view

Right click on the view. Select **Properties** to open [Connection view properties][enterprise_connect_connectionviewproperties].

## Rename a custom view

Right click on the custom view. Select **Rename view**.

## Delete a custom view

Right click on the custom view. Select **Delete view**.

## Custom views and the Spotlight deployment

Custom views are created in the Spotlight Client and saved with the Spotlight Diagnostic Server. All Spotlight Clients connecting to the Spotlight Diagnostic Server have access to the same custom views.

Where a Spotlight Diagnostic Server is federated, any monitored connection in the federation can be added to any custom view. All Spotlight Clients have access to all custom views in the federation. When a Spotlight Diagnostic Server joins a federation then the custom views from that Spotlight Diagnostic Server will be seen by all Spotlight Clients in the federation. Any two custom views with the same name will be merged into one view. When a Spotlight Diagnostic Server leaves a federation, the custom views will stay with the federation, however any monitored connections connected to the Spotlight Diagnostic Server that has left will no longer be accessible to the federation.

Mobile: An equivalent feature to custom views is available on Spotlight Mobile, however there is no correlation between the custom views created in the Spotlight Client and the equivalent created on Spotlight Mobile. You may choose to recreate custom views on your mobile device, however they have no relationship to the custom views created on the Spotlight Client.

{% include links.html %}
