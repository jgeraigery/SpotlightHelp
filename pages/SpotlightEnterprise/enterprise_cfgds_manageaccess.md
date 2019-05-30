---
title: Manage access to Spotlight connections
summary: "Define which Spotlight users are entitled to view which Spotlight connections."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgds_manageaccess.html
id: 712
folder: SpotlightEnterprise
---


Users who are members of the Spotlight Diagnostic Administrators group can use this screen to assign Spotlight users access privileges to Spotlight connections.

## Open this screen from the Spotlight Client

1. Click **Configure \| Diagnostic server**.
2. Select **Manage access to Spotlight connections**.

## Select the Diagnostic Server

In a federated environment you can select the Spotlight Diagnostic Server. Connections monitored under that Diagnostic Server will be listed.

## Spotlight Users and Spotlight Connections
Select a user from the left column of Spotlight Users. Spotlight connections are listed to the right. Each connection is set to on/off access for the selected Spotlight user. Click **Apply** to apply changes.


Notes:

* Newly added connections are accessible to all users by default.
* If a connection appears in both "Include" and "Exclude" list then "Exclude" wins - in other words, that connection will be excluded.

For more on Spotlight Diagnostic User Groups, see [Spotlight Diagnostic User Groups][enterprise_backend_spotlightdiagnosticusergroups].


{% include links.html %}
