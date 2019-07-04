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

## Manage Access to Spotlight connections

Action on Manage Access to Spotlight connections | Spotlight Diagnostic Administrators | Spotlight Diagnostic Users | Spotlight Diagnostic Read-Only
-------------------------------------------------|-------------------------------------|----------------------------|-------------------------------
View all users | Yes | Yes | Yes
View all connections | Yes | Yes
View which connections are accessible by which users | Yes | Yes | Yes
Search user by user name | Yes | Yes | Yes
Search connection by connection name, display name,connection type and tag | Yes | Yes | Yes
Allow/Deny connection to Spotlight Diagnostic Administrators group | No | No | No
Allow/Deny connection to Spotlight Diagnostic Users or Spotlight Diagnostic Read-Only Users groups | Yes | No | No

{% include note.html content="All users are entitled to access all the connections (including any new added connection) until Administrator explicitly deny it." %}


## Permission Precedence
Because of an Active Directory user may also included in Active Directory groups and a Spotlight user may have different roles configured, it is possible that conflicting permission settings might happen. 

Here are some rules for resolving permissions conflicts:

1. "Administrator" role generally take precedence over "Non Administrator" role.
2. "Deny" permissions generally take precedence over "Allow" permissions.

For more on Spotlight Diagnostic User Groups, see [Spotlight Diagnostic User Groups][enterprise_backend_spotlightdiagnosticusergroups].
For more on Manage access to Spotlight connections known issues, see [known issues configuring Spotlight][enterprise_releasenotes_knownissues].

{% include links.html %}
