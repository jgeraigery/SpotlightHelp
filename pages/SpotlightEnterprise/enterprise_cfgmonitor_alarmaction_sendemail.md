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
* of specific severity ([severities][enterprise_cfgmonitor_alarm_severity])
* send an email

How can this rule be created and maintained?



## Create and maintain alarm action rules from the Spotlight Client

From the Spotlight Client:

1. Click [Configure \| Alarms Actions][enterprise_cfgmonitor_alarmactions].
2. Click **New** to create a new rule. This opens the [Alarm Action Dialog][enterprise_cfgmonitor_alarmaction].

## Select the conditions under which the rule will run.


If this rule is related to specific connections

1. In the list of conditions, tick **The connection is...**
2. In the rule description click **connections**. Select the connections this rule applies to.

   {% include tip.html content="When you use The **connection is...** condition there are some things to be aware of. For more information, see [The Connection is…][enterprise_cfgmonitor_alarmaction_connectionis]." %}

If this rule is related to specific alarms

1. In the list of conditions, tick **The alarm is...**
2. In the rule description click alarms. Select the alarms this rule applies to.

If this rule is related to specific severities

1. In the list of conditions, tick **The alarm severity is...**
2. In the rule description click Low, Medium or High. Select the severities this rule applies to.

### Variable conditions - multiple rules

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


## Select the action to Send email to...

In the list of actions to perform, tick **Send email to...**

## Open and fill in the Send a Push Notification dialog

In the rule description, click (recipient). This opens the **Send an Email Dialog**.

### To

Enter the target email address.

### Subject

This is the message subject line. For more information, see [Alarms - Message Variables][enterprise_cfgmonitor_alarm_messagevariables].

### Message

This is the body of the message to be sent. For more information, see [Alarms - Message Variables][enterprise_cfgmonitor_alarm_messagevariables].

### Settings

The Spotlight Diagnostic Server requires details of what email settings to use when sending an email. Click the link to modify settings; open the [SMTP Mail Options dialog][enterprise_cfgds_mailserver_smtpoptions]. Note that you can also use this link to create a default recipient list.

### Test

Click **Test** to ensure all settings are correct and operational.




{% include links.html %}
