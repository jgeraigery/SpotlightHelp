---
title: Spotlight diagnostic user groups
summary: "The Spotlight diagnostic user groups are Windows groups created on install of Spotlight. Spotlight uses membership of these groups to authenticate Spotlight Client access to the Spotlight Diagnostic Server. There are three groups. The level of membership affects the user's right to configure Spotlight and execute actions on monitored Windows Server and SQL Server instances"
sidebar: p_enterprise_sidebar
permalink: enterprise_backend_spotlightdiagnosticusergroups.html
folder: SpotlightEnterprise
---



## Group


### Spotlight Diagnostic Users

Members of this group are granted user privileges to Spotlight. They can do the usual diagnostic tasks. For example, they can view the home pages, the drilldown pages, browse the playback data and change alarm thresholds.

### Spotlight Diagnostic Administrators


Members of this group are granted administrator privileges in addition to user privileges. They can kill database sessions and change sensitive configuration items.

Note: Administrative changes are logged. The logged entry includes the date, time, connection name, user and client IP address, a brief description of the action, and whether it succeeded or not. The log file is: ..\Agent\log\admin-audit.log in the Spotlight Diagnostic Server installation folder.

### Spotlight Diagnostic Read-Only


Members of this group can view the home pages, the drilldown pages, the playback data and alarm cases. They cannot make changes to Spotlight's operation. For example, they cannot alter the state of Spotlight on SQL Server and Monitored Servers.


Add members, increase / decrease your level of membership

Your Network Administrator can add members, increase and decrease your membership as required.

Members can be Windows users or Windows domain groups. Aliases are not supported.

The privileges available to a user correspond to the highest Spotlight diagnostic user group that user is a member of. Spotlight diagnostic read-only users have the fewest privileges, but if a user is also a member of the Spotlight diagnostic administrators group then that user will have administrator privileges.

Any change to a user’s role by modifying these Windows groups will not take effect until that user restarts their Spotlight Client and it reconnects to the Spotlight Diagnostic Server. For this reason, it is recommended that the Spotlight Diagnostic Server be restarted if the role changes need to take immediate effect.

## Using Spotlight

Your membership of the Spotlight diagnostic user groups impacts your ability to use Spotlight:

### Spotlight Client


To connect the Spotlight Client to the Spotlight Diagnostic Server, the Windows user on the Spotlight Client must be a member of at least one Spotlight diagnostic user group.

To use the Spotlight Client to configure Spotlight or execute a user action such as kill a session, the Windows user on the Spotlight Client must be a member of a Spotlight diagnostic user group that is allowed to perform that action. For details see Permissions for the Spotlight Client.


### SCOM


The Spotlight Management Pack for SCOM is appropriate for organizations that use SCOM (System Center Operations Manager) as their centralized monitoring system and wish to use Spotlight as their tool of choice for SQL Server monitoring.

The Windows user(s) running the SCOM Console and SCOM Management Server must be member(s) of the Spotlight Diagnostic Administrators Group for each Spotlight Diagnostic Server. This ensures that a secure connection to the Spotlight Diagnostic Server can be made through Port 40403 and that Spotlight information can be retrieved. For details, see the Spotlight™ Management Pack for SCOM User Guide.


{% include links.html %}
