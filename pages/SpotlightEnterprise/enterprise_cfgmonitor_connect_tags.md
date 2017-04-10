---
title: Connection Tags
summary: "Tags are a free form organizational tool that may be optionally applied to Spotlight connections. Tag names represent a project, geographic region or other indicator of interest to you and your organization. Multiple tags can be assigned to one connection."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_connect_tags.html
id: 40103
folder: SpotlightEnterprise
---



Tags are a way for you to group your connections in a way that is meaningful to you, independent of the connection name and connection type.

## Applications for tags

Possible application | Description
---------------------|------------
[Connections Display][enterprise_connect_display] | Search for connections by tag name.
[Alarm Action Dialog][enterprise_cfgmonitor_alarmaction] | Setup actions to take when an alarm is raised. Actions can be conditional on the tag name.  
[Send an Email Dialog][enterprise_cfgmonitor_alarmaction_sendemail] | Send an email when an alarm is raised. The tag name can be included in the email subject or message.
[Run a Program Dialog][enterprise_cfgmonitor_alarmaction_runaprogram] | Run a program when an alarm is raised. The tag name can be included in the program output.



## How to open the Connection \| Tags dialog

From the Spotlight Client

1. Click **Configure \| Connections**.
   {% include imageClient.html file="tb_config_connections.png" alt="Configure Connections" %}
2. Right-click the connection and select **Properties \| Tags**.

## List of tags

The list of tags in the **Connection \| Tags** dialog lists all the tags added to this connection.

## Value

Use the value field in the **Connection \| Tags** dialog to create and modify tags.

Example tag names are:

```
   #Country.USA
   #APP.Finance
   #APP.HR
```

Notes on the value field:

*  Use the drop down menu to select from tags currently assigned to connections on the Spotlight Diagnostic Server.
*  A tag can be made up of alphanumeric and special characters. It can include spaces within the name and value. It is not case sensitive.
*  Duplicate tags are not allowed.
*  Tag names are prefixed with the # character. A tag name cannot begin with the # character as in ##owner.bob.

## How to Replace, Add and Delete tags

### Replace

To modify a tag in the list of tags:

1. Select the tag in the list of tags.
2. The tag appears in the **Value** field. Edit as required.
3. Click **Replace**.

### Add

To add a tag to the list of tags:

1. Create a tag in the **Value** field.
2. Click **Add**.

### Delete

To delete a tag from the list of tags:

1. Select the tag in the list of tags.
2. The tag appears in the **Value** field.
3. Click **Delete**.

{% include note.html content="Read-only users cannot Add, Replace and Delete tags. For more information, see [Spotlight diagnostic user groups][enterprise_backend_spotlightdiagnosticusergroups]." %}

{% include tip.html content="The [Connection Discovery Wizard][enterprise_cfgmonitor_connect_discoverywizard] imports details to SQL Server instances or Windows Servers from file. If you re-import the same file with updated tags, Spotlight will skip the connection creation step but update the tags." %}

{% include links.html %}
