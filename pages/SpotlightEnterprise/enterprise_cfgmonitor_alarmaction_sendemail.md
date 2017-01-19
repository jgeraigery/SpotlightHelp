---
title: Send email to
summary: "Configure Spotlight to send an email when an alarm is raised."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_alarmaction_sendemail.html
id: 214
folder: SpotlightEnterprise
---



The standard scenario may be:
* for a given connection
* when a specific alarm is raised
* of specific severity (severities)
* send an email

How can this rule be created and maintained in the Alarm Action Editor?



## Creating the rule

1. Click Configure \| Alarm Actions.
2. Click **New** to create a new rule.
3. If this rule is related to specific connections

   1. In the list of conditions, tick **The connection is...**
   2. In the rule description click **connections**. Select the connections this rule applies to.

4. If this rule is related to specific alarms

   1. In the list of conditions, tick **The alarm is...**
   2. In the rule description click alarms. Select the alarms this rule applies to.

5. If this rule is related to specific severities

   1. In the list of conditions, tick **The alarm severity is...**
   2. In the rule description click Low, Medium or High. Select the severities this rule applies to.

6. In the list of actions to perform, tick Send email to...

   1. In the rule description, click (recipient). This opens the **Send an Email Dialog**.


TIP: When you use The connection is... condition there are some things to be aware of. For more information, see The Connection is….


## Variable conditions - multiple rules

For any given rule, all the actions are taken when all the conditions are met. Any variability requires separate rules.

You may want to direct operating system related alarms to the help desk and SQL Server related alarms to the DBA group.

{% raw %}
```
For all alarms
where the connection type is one of os/vmware, os/windows
   send email to helpdesk@company com

For all alarms
where the connection type is database/sqlserver
   send email to dbagroup@company com
```
{% endraw %}

The severity may determine the action.


{% raw %}
```
For all alarms
where the connection type is one of os/vmware, os/windows
      and the alarm severity is High
   send email to helpdesk@company com

For all alarms
where the connection type is database/sqlserver
      and the alarm severity is Medium or High
   send email to dbagroup@company com
```
{% endraw %}

## Send an Email Dialog

Configure Spotlight to send an email when an alarm is raised.

## To open this dialog

1. Click Configure \| Alarms Actions. For more information, see Configure \| Alarm Actions.
2. Click **New** to create a new rule. This opens the Alarm Action Dialog.

   1. Give a meaningful name to the rule.
   2. Select the conditions under which the rule will run.
   3. Under actions select **Send email to**.


## The Add an email dialog


### To

Enter the target email address.

### Subject

This is the message subject line. For more information, see Alarms - Message Variables.

### Message

This is the body of the message to be sent. For more information, see Alarms - Message Variables.

### Settings

The Spotlight Diagnostic Server requires details of what email settings to use when sending an email. Click the link to modify settings; open the SMTP Mail Options dialog. Note that you can also use this link to create a default recipient list.

### Test

Click Test to ensure all settings are correct and operational.




{% include links.html %}
