---
title: Example alarm action rules
summary: "A set of actions and conditions are defined in a rule in the Alarm Action Editor. For more information, see Configure | Alarm Actions."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfg_alarmaction_example.html
folder: SpotlightEnterprise
---

An example rule description may be:


For all alarms where the day of the week is Sunday or Saturday and the alarm severity is High send email to jsmith@company.com

## For any given rule, ALL the actions are taken when ALL the conditions are met.

Where the actions vary depending on the conditions multiple rules are required. For example:


For all alarms where the day of the week is Sunday and the alarm severity is High send email to jsmith@company.com


For all alarms where the day of the week is Saturday and the alarm severity is High or Medium send email to jsmith@company.com

## Stop processing further rules

Rules are executed in order, top to bottom. A useful action to incorporate is stop processing further rules. When the following two rules are executed in order an email is sent if the alarm severity is Low on Sunday or Saturday. Reverse the execution order of these two rules and an email is sent for every alarm raised with low priority.


For all alarms where the alarm severity is Low and the day of the week is Monday, Tuesday, Wednesday, Thursday or Friday stop processing further rules

For all alarms where the alarm severity is Low send email to jsmith@company com

## The alarm has been cleared

The alarm has been cleared is a special condition. When an alarm is cleared then only rules matching that condition will be executed. So for the following two rules, the first rule is ignored when the alarm has been cleared - an email is sent for every alarm that has been cleared including if one of the three alarms listed by the first rule is cleared.


 For all alarms where the alarm is not one of CPU - Average CPU Usage, CPU - Individual CPU Usage, CPU Processor Queue Length stop processing further rules.

For all alarms where the alarm has been cleared send e-mail to jsmith@company.com


{% include links.html %}
