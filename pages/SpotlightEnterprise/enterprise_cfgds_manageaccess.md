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
Select a user from the left column of Spotlight Users. Spotlight connections are listed to the right. Each connection is set to on/off access for the selected Spotlight user. 


Notes:

* All users are entitled to access all the connections by default.
* Any connections added after user access has been assigned are accessible to all users by default.
* User access to connections is controlled by an administrator denying access to selected connections for a user. All other connections are accessible.
* Any user in the Spotlight Diagnostic Administrators group will inherit a new privilege of controlling connection access for other users. This will allow them to control access for users in the Spotlight Diagnostic Users and Spotlight Diagnostic Read-Only Users groups.
* Users in the Spotlight Diagnostic Users and Spotlight Diagnostic Read-Only Users groups see a "view only" list of all connections that is not editable. This enables them to see their access rights to all connections. It will also aid them in making accurate requests to the administrators for access to inaccessible connections.
* If required the Spotlight user groups may contain Active Directory user groups. Users in those Active Directory groups are treated as if they were members of the Spotlight user groups that the Active Directory groups are members of.
* User names in the left column are searchable by user name.
* Connections in the right column are searchable by connection name, display name, connection type and tag.

For more on Spotlight Diagnostic User Groups, see [Spotlight Diagnostic User Groups][enterprise_backend_spotlightdiagnosticusergroups].
For more on Manage access to Spotlight connections known issues, see [known issues configuring Spotlight][enterprise_releasenotes_knownissues].

{% include links.html %}
