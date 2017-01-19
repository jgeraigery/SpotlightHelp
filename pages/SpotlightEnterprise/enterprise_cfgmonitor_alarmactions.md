---
title: Configure Alarm Actions
keywords: alarms
summary: "Setup actions for Spotlight to take when an alarm is raised. The actions Spotlight can take include running a program and sending an email. Conditions on taking the action can be defined, such as the day of the week, the time of day, the severity of the alarm, the alarm type and the connection type."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_alarmactions.html
id: 220
folder: SpotlightEnterprise
---



## To open the alarm action editor

Click **Configure \| Alarm Actions**.




## New rule

Click New to create a new rule. This opens the Alarm Action Dialog. A rule is made up of conditions and actions. ALL actions of the rule are executed when ALL conditions of the rule are met. You may want to create many rules to ensure your requirements are met.

## Rule order

Rules are executed in the order they are displayed in the Alarm Action Editor (top to bottom). Move rules up and down to re-organize them as appropriate. For examples see Example Alarm Action Rules.

## Rule description

Click on a rule to select it. When the rule is selected a "read only" view of the Rule description is displayed. A rule is made up of at least one action and usually one or more conditions. This is what a rule looks like.

{% raw %}
```
For all alarms where the day of the week is Sunday or Saturday and the alarm severity is High send email to jsmith@company.com
```
{% endraw %}


All the actions in the rule are executed when all the conditions in the rule are met.


## Display options

Option | Description
-------|------------
New | Create a new rule. This opens the Alarm Action Dialog.
Modify | Modify the selected rule. Click on the rule to select it. This opens the rule in the Alarm Action Dialog.
Delete | Delete the selected rule.
Move Down / Move Up | Rules are executed in the order they are listed in the Alarm Action Editor. Move rules up and down to re-organize them. For examples see Example Alarm Action Rules.


## Federate Spotlight Diagnostic Servers

In a federated system (Federate Diagnostic Servers) a rule may apply to one Spotlight Diagnostic Server or all Spotlight Diagnostic Server in the federation. When you create or modify the rule, use the Spotlight Diagnostic Server condition as appropriate.

{% include links.html %}
