---
title: Connection Tags
tags: [connection_details]
summary: "Tags are a free form organizational tool that may be optionally applied to Spotlight connections. Tag names represent a project, geographic region or other indicator of interest to you and your organization. Multiple tags can be assigned to one connection."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfg_connect_tags.html
folder: SpotlightEnterprise
---



Tags are a way for you to group your connections in a way that is meaningful to you, independent of the connection name and connection type.

## Applications for tags

Possible application | Description
---------------------|------------
Monitored connections Select Connections | Search for connections by tag name.
 Alarm Action Dialog | Setup actions to take when an alarm is raised. Actions can be conditional on the tag name.  
Send an Email Dialog | Send an email when an alarm is raised. The tag name can be included in the email subject or message.
Run a Program Dialog | Run a program when an alarm is raised. The tag name can be included in the program output.



## Replace / add / delete tags

From the Spotlight Client

1. Click Configure \| Connections.
2. Right-click the connection and select Properties \| Tags.

### List of tags

A list of all the tags added for this connection.

### Value

Use to create and modify tags.

Example tag names are:

   #Country.USA
   #APP.Finance
   #APP.HR

Note:
*  Use the drop down menu to select from tags currently assigned to connections on the Spotlight Diagnostic Server.
*  A tag can be made up of alphanumeric and special characters. It can include spaces within the name and value. It is not case sensitive.
*  Duplicate tags are not allowed.
*  Tag names are prefixed with the # character. A tag name cannot begin with the # character as in ##owner.bob.

### Replace

Use to modify a tag in the list of tags.

1. Select the tag in the list of tags.
2. The tag appears in the Value field. Edit as required.
3. Click Replace.

### Add

Use to add a tag to the list of tags.

1. Create a tag in the Value field.
2. Click Add.

### Delete

Use to delete a tag from the list of tags.

1. Select the tag in the list of tags.
2. The tag appears in the Value field.
3. Click Delete.


Note: Read-only users cannot Add, Replace and Delete tags. For more information, see Spotlight diagnostic user groups.

TIP: The Connection Discovery Wizard imports details to SQL Server instances or Windows Servers from file. If you re-import the same file with updated tags, Spotlight will skip the connection creation step but update the tags.

{% include links.html %}
