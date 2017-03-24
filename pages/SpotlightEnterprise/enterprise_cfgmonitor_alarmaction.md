---
title: Configure Alarm Action
summary: "Setup actions for Spotlight to take when an alarm is raised. The actions Spotlight can take include running a program and sending an email. Conditions on taking the action can be defined, such as the day of the week, the time of day, the severity of the alarm, the alarm type and the connection type."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_alarmaction.html
id: 221
folder: SpotlightEnterprise
---


## Open the Alarm Action dialog

Open the Alarm Action dialog from the Spotlight Client.

1. Click **Configure \| Alarm Actions**.
2. Click **New** to create a new rule or select a rule and click **Edit**.

## Rules

The Alarm Action Dialog works with one rule at a time. A rule is made up of at least one action and usually one or more conditions. This is what a rule looks like.

{% raw %}
```
For all alarms where the day of the week is Sunday or Saturday and the alarm severity is High send email to jsmith@company.com
```
{% endraw %}

All the actions in the rule are executed when all the conditions in the rule are met. You may want to create many rules to ensure your requirements are met. To manage multiple rules and the order they are executed see [Configure \| Alarm Actions][enterprise_cfgmonitor_alarmactions].

### Name

When you create a rule ensure its name is meaningful. For example:

* **Alarm name** - where the rule applies to a specific alarm raised on any connection.
* **Alarm name for Connection name** - where the rule applies to a specific alarm raised on a specific connection.

## Conditions

Optionally, define one or more conditions for this alarm action rule. All actions are executed when all conditions are met.

### The alarm has been cleared

Take action when the alarm severity returns to {% include inline_imageClient.html file="icon_alarm_green.png" alt="Normal" %} Normal.

### The alarm has existed for more than…

Take action when the alarm severity has been other than {% include inline_imageClient.html file="icon_alarm_green.png" alt="Normal" %} Normal for a specified period of time.

You define the period of time in hours, minutes or days. For example, take action when the alarm severity has been other than normal for 5 days.

### The alarm hasn't been acknowledged within…

Take action when an alarm requiring [acknowledgment][enterprise_alarm_acknowledge] has not been acknowledged for a specified period of time.

You define the period of time: in hours, minutes or days.

This condition is applicable to alarms requiring acknowledgment. Alarms are configured to require acknowledgment using [Configure \| Alarms][enterprise_cfgmonitor_alarms].

### The alarm is…

Take action when the specified alarm is raised. If an alarm is not specified this rule applies to all alarms.

Note the option to select "is" or "is not". Where "is not" is selected, take action for any alarm raised except the specified alarm.

### The alarm severity is…

Take action when the alarm severity changes to one of the following: {% include inline_imageClient.html file="icon_alarm_blue.png" alt="Information" %} Information, {% include inline_imageClient.html file="icon_alarm_yellow.png" alt="Low" %} Low, {% include inline_imageClient.html file="icon_alarm_orange.png" alt="Medium" %} Medium or {% include inline_imageClient.html file="icon_alarm_red.png" alt="High" %} High.

### The connection is…

Take action when the alarm is raised against the specified connection(s).

Note the option to select "is" or "is not". Where "is not" is selected, take action when the alarm is raised on any connection except the connection specified.

Refer to the guidelines for [The Connection is…][enterprise_cfgmonitor_alarmaction_connectionis] The guidelines are designed to support a smooth running system. Note that the organization of rules in the Alarm Action Editor can be the difference between a smooth running system and an excessive duplication of actions (such as sending of emails).

### The connection type is…

Take action when an alarm is raised against the specified connection type(s): Analysis Services, Availability Groups, Hyper-V, SQL Server Replication, SQL Azure, SQL Server, VMware and Windows.

### The connection's tag is…

Take action when an alarm is raised against a connection with matching connection tag name.

This condition is appropriate if your organization has defined tags for Spotlight connections. Tags are a free form organizational tool that may be optionally applied to Spotlight connections. Tag names represent a project, geographic region or other indicator of interest to you and your organization. Multiple tags can be assigned to one connection. In the Modify Criteria dialog, use the drop down menu to select from tags currently assigned to connections on the Spotlight Diagnostic Server. For more information on tags, see [Connection Properties \| Tags][enterprise_cfgmonitor_connect_tags].

### The date is…

Take action when the alarm is raised on the specified date.

Note the option to select "is" or "is not". Where "is not" is selected, take action when the alarm is raised on any date except the specified date. For example, you may want no action taken on a scheduled public holiday.

Where multiple timezones are involved, the date is as per the date on the Spotlight Diagnostic Server.

### The day of the week is…

Take action when the alarm is raised on the specified day(s) of the week. For example, act on this rule when the alarm is raised on a Monday, take no action on this rule when the alarm is raised on any other day of the week.

Where multiple timezones are involved, the day of the week is as per the day on the Spotlight Diagnostic Server.

### The details contain…

Take action when the **Details** column of the raised alarm(s) contains (or does not contain) one or more specific phrases.

The Details column is as per the text displayed in the Details column of the Alarm log when the alarm is raised. To customize this text, see [Configure \| Alarms][enterprise_cfgmonitor_alarms].

### The Diagnostic Server is…

Take action when the Spotlight Diagnostic Server is as selected.

This option is applicable to a [federated system][enterprise_backend_federation]. When a Spotlight Diagnostic Server joins a federation the condition "The Diagnostic Server is…" is added to every Alarm Action rule from that Spotlight Diagnostic Server. Do nothing if the Alarm Action rule is specific to that Spotlight Diagnostic Server. If the Alarm Action rule is applicable to the federation then you can remove the condition "The Diagnostic Server is…" and delete duplicate alarm actions.

### The time of day is between…

Take action during the specified time frame. For example, take the actions associated with this rule when the alarm is raised between 6:00pm and 6:00am. Take no actions associated with this rule outside of that time frame.

Where multiple timezones are involved, the time of day is as per the time on the Spotlight Diagnostic Server.




## Actions

Select the action(s) to take when all the above specified condition(s) are met


### Decrease the severity

Decrease the severity to one of: {% include inline_imageClient.html file="icon_alarm_green.png" alt="Normal" %} Normal, {% include inline_imageClient.html file="icon_alarm_blue.png" alt="Information" %} Information, {% include inline_imageClient.html file="icon_alarm_yellow.png" alt="Low" %} Low or {% include inline_imageClient.html file="icon_alarm_orange.png" alt="Medium" %} Medium.

If the action is to decrease the severity to Low then the alarm raised must have a severity of High or Medium for any action to take place. If the alarm raised has a severity lower than the severity selected for this action then no action will be taken.

If the alarm requires acknowledgment and has not been acknowledged, then this action will decrease the alarm severity without acknowledgment.

### Execute a Powershell script

Execute a Powershell script on the monitored server. The script is executed remotely using the username/password configured for the monitored Windows server. For more information, see [Windows Server \| Connection Details][windows_connect_details].

To use variables in your Powershell script see [Alarms - Message Variables][enterprise_cfgmonitor_alarm_messagevariables].

### Execute a SQL script

Execute a SQL script on the monitored server. This action is applicable only to SQL Server connections. The script is executed under the username and password Spotlight uses to connect to the SQL Server.

To use variables in your SQL script see [Alarms - Message Variables][enterprise_cfgmonitor_alarm_messagevariables] for more information.

### Run a program

Execute a command line on the Spotlight Diagnostic server.

When filling in the command line field:

* File or path names that contain spaces should be enclosed in double quotes.
* Use variables where applicable. For more information, see [Alarms - Message Variables][enterprise_cfgmonitor_alarm_messagevariables].
* Here is an example. You can echo tag values as follows.

#### Output to file

{% raw %}
```liquid
echo {{TAG_VALUE #tagname}} >>c:\output.txt
```
{% endraw %}

#### Output to monitor

{% raw %}
```liquid
MSG /SERVER:<computer name> * "{{TAG_VALUE #tagname}}"
```
{% endraw %}

The behavior of the invoked program depends on the nature of the program.

* It is recommended that you do not invoke a UI-based program in response to the alarm, as the program will run as a service on a remote host.
* If the program that runs in response to an alarm is still executing when the alarm fires again, subsequent commands to run the program are ignored until that execution finishes.
* If you attempt to stop Spotlight whilst a program or command line action is still executing, Spotlight will wait until that program or command line action has ended before stopping.

### Run actions again after

Re-evaluate this rule after a specified period of time. If the conditions of this rule are still true at that time then repeat the actions. Continue to repeat these actions at this interval for as long as all conditions are true.

You define the period of time: in hours, minutes or days.

For example, if the rule is to Send an email if a CPU alarm is raised and Run actions again after 5 minutes, then an email will be sent every 5 minutes for as long as the CPU alarm is raised.

### Send Push Notification to my mobile device

Send a push notification to mobile device(s) where Spotlight Mobile is installed with Sign in from the Spotlight Cloud (Spotlight Essentials) account(s) entered into the To field.


#### To

The Spotlight Cloud (Spotlight Essentials) account name(s) to receive the push notification.

Note that Spotlight Cloud account names are in the form of an email address. However the push notification is not sent to the email address. The push notification is sent to mobile device(s) where Spotlight Mobile is installed with Sign in from this(these) Spotlight Cloud account name(s).

When multiple Spotlight Cloud account names are involved, separate each account name with a comma.

#### Message

The push notification message. This can include variables. For more information, see [Alarms - Message Variables][enterprise_cfgmonitor_alarm_messagevariables].

For more information on the receipt of these push notifications, refer to the [Spotlight Mobile Guide][mobile_alarm_notifications].

### Send email to

Send an email. Enter the target email address, subject line and content of the message to be sent. For more information, see [Send email to....][enterprise_cfgmonitor_alarmaction_sendemail]

You can create a default recipient list. For more information, see [Configure the Diagnostic Server's mail server][enterprise_cfgds_mailserver].

To include text specific to the alarm in the email use variables. See [Alarms - Message Variables][enterprise_cfgmonitor_alarm_messagevariables].

### Send PagerDuty incident

Send the details of this alarm to PagerDuty; PagerDuty can then be used to notify the appropriate people via SMS, email, phone calls and push notifications. Spotlight sends the following alarm details: the alarm name, connection name, the time the alarm was raised, the severity of the alarm, the alarm message and snooze status. Ensure the necessary instructions have been followed to integrate Spotlight with PagerDuty:

* [Configure PagerDuty][enterprise_cfgds_pagerduty]
* [PagerDuty][enterprise_interface_pagerduty]
* [www.pagerduty.com/docs](https://www.pagerduty.com/docs)

### Send SNMP Trap

Generate an SNMP trap. The trap will be sent to the SNMP manager as configured on the page [Configure the SNMP Trap][enterprise_cfgds_snmptrap]. The SNMP trap can be viewed through third party software designed for that purpose. The trap contains the alarm name, time of the alarm, severity, Spotlight alarm message and connection name.

### Stop processing further rules

No further rules will be executed. Execute this rule to completion first. For more information, see Example [Alarm Action Rules][enterprise_cfgmonitor_alarmactions].

### Suppress the alarm

Return the alarm severity to {% include inline_imageClient.html file="icon_alarm_green.png" alt="Normal" %} Normal.

If the alarm requires acknowledgment and has not been acknowledged, then following this action the alarm severity will be returned to normal without acknowledgment.

### Write the alarm details to a Windows Event log

Write the details of the alarm to the Windows Event log on the Spotlight Diagnostic Server.

#### Source

Source is the name of the software that logs the event.

If you change the source name, make sure you do not change it to an existing system's source name.

#### Level

Level is one of: Success, Error, Warning, Information.

#### Message

The message field is required; it cannot be empty. The default message is:

```
{{CONNECTION_NAME}} raised an alarm: {{Message}}
```

The message can include variables. For more information on variables, see [Alarms - Message Variables][enterprise_cfgmonitor_alarm_messagevariables].

{% include links.html %}
