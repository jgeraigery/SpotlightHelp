---
title: Run a program
summary: "Configure Spotlight to run a program when an alarm is raised."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_alarmaction_runaprogram.html
folder: SpotlightEnterprise
---

The standard scenario may be:

* for a given connection
* when a specific alarm is raised
* of specific severity (severities)
* run a program

How can this rule be created and maintained in the Alarm Action Editor?



## Creating the rule

1. Click **Configure \| Alarm Actions**.
2. Click **New** to create a new rule.
3. If this rule is related to specific connections
   1. In the list of conditions, tick **The connection is...**
   2. In the rule description click **connections**. Select the connections this rule applies to.
4. If this rule is related to specific alarms
   1. In the list of conditions, tick **The alarm is...**
   2. In the rule description click **alarms**. Select the alarms this rule applies to.
5. If this rule is related to specific severities
   1. In the list of conditions, tick **The alarm severity is...**
   2. In the rule description click Low, Medium or High. Select the severities this rule applies to.
6. In the list of actions to perform, tick Run a program
   1. In the rule description, click (program). This opens the Run a Program Dialog.

TIP: When you use The connection is... condition there are some things to be aware of. For more information, see The Connection is….

## Variable conditions - multiple rules

For any given rule, all the actions are taken when all the conditions are met. Any variability requires separate rules.

Following is an example.

~~~
For all alarms
where the connection type is one of os/vmware, os/windows
      and the alarm severity is High
   run programA

For all alarms
where the connection type is database/sqlserver
      and the alarm severity is Medium or High
   run programB
~~~


## Run a Program Dialog

Configure Spotlight to run a program when an alarm is raised.

## To open this dialog

1. Click Configure \| Alarms Actions to open the Configure \| Alarm Actions.
2. Click **New** to create a new rule. This opens the Alarm Action Dialog.
   1. Give a meaningful name to the rule.
   2. Select the conditions under which the rule will run.
   3. Under actions select **Run a program**.


## The Run a program dialog

Enter the command to run the program at the Command line prompt.

You can include variable values specific to the alarm in the command line. See Alarms - Message Variables for more information. For example you can echo tag values as follows.

### Output to file

{% raw %}
```liquid
echo {{TAG_VALUE #tagname}} >>c:\output.txt
```
{% endraw %}

### Output to monitor

{% raw %}
```liquid
MSG /SERVER:<computer name> * "{{TAG_VALUE #tagname}}"
```
{% endraw %}

   Note: The behavior of the invoked program depends on the nature of the program.
* It is recommended that you do not invoke a UI-based program in response to the alarm, as the program will run as a service on a remote host.
* If the program that runs in response to an alarm is still executing when the alarm fires again, subsequent commands to run the program are ignored until that execution finishes.
* If you attempt to stop Spotlight whilst a program or command line action is still executing, Spotlight will wait until that program or command line action has ended before stopping.




{% include links.html %}
