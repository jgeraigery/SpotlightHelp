---
title: Send push notification to
summary: "Configure Spotlight to send a push notification to a mobile device when an alarm is raised."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_alarmaction_pushnotification.html
id: 215
folder: SpotlightEnterprise
---

The standard scenario may be:

* for a given connection
* when a specific alarm is raised
* of specific severity ([severities][enterprise_cfgmonitor_alarm_severity])
* send a push notification to a mobile device

How can this rule be created and maintained?



## Create and maintain alarm action rules from the Spotlight Client

From the Spotlight Client:

1. Click [Configure \| Alarms Actions][enterprise_cfgmonitor_alarmactions].
   {% include imageClient.html file="tb_config_alarmactions.png" alt="Configure Alarm Actions" %}
2. Click **New** to create a new rule. This opens the [Alarm Action Dialog][enterprise_cfgmonitor_alarmaction].

## Select the conditions under which the rule will run.

If this rule is related to specific connections

1. In the list of conditions, tick **The connection is...**
2. In the rule description click **connections**. Select the connections this rule applies to.

   {% include tip.html content="When you use The **connection is...** condition there are some things to be aware of. For more information, see [The Connection is…][enterprise_cfgmonitor_alarmaction_connectionis]." %}

If this rule is related to specific alarms

1. In the list of conditions, tick **The alarm is...**
2. In the rule description click **alarms**. Select the alarms this rule applies to.

If this rule is related to specific severities

1. In the list of conditions, tick **The alarm severity is...**
2. In the rule description click **Low, Medium or High**. Select the severities this rule applies to.

### Variable conditions - multiple rules

For any given rule, all the actions are taken when all the conditions are met. Any variability requires separate rules.

Push notifications for operating system related alarms and SQL Server related alarms may have different recipients.

{% raw %}
```
For all alarms
where the connection type is one of os/vmware, os/windows
    send Push Notification to helpdesk@company com

For all alarms
where the connection type is database/sqlserver
    send Push Notification to dbagroup@company com
```
{% endraw %}

The severity may determine the action.

{% raw %}
```
For all alarms
where the connection type is one of os/vmware, os/windows
    and the alarm severity is High
send Push Notification to helpdesk@company com

For all alarms
where the connection type is database/sqlserver
    and the alarm severity is Medium or High
send Push Notification to dbagroup@company com
```
{% endraw %}


## Select the action to Send Push Notification to my mobile device

In the list of actions to perform, tick **Send Push Notification to my mobile device**

## Open and fill in the Send a Push Notification dialog

In the rule description, click (add recipient account). This opens the **Send a Push Notification Dialog**.

### To

Enter the Quest account name(s) to receive the push notification.

Note that Quest account names are in the form of an email address. However the push notification is not sent to the email address. The push notification is sent to mobile device(s) where [Spotlight Cloud Mobile][mobile_welcome] is installed with Sign in from this(these) Quest account(s).

When multiple Quest account names are involved, separate each account name with a comma.

In the case of a Spotlight Organization, to send a push notification to all members of the organization, list all members of the organization in the To field.

### Message

Enter the push notification message.

This can include variables. For more information, see [Alarms - Message Variables][enterprise_cfgmonitor_alarm_messagevariables].

### Test

Click **Test** to send a push notification to mobile device(s) where Spotlight Cloud Mobile is installed with Sign in from this(these) Quest account(s). Confirm notifications are working as expected.





{% include links.html %}
