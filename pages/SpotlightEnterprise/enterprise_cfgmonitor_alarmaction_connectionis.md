---
title: The connection is...
summary: "When using The connection is condition in the Alarm Action Editor there are a set of guidelines to follow. The organization of rules in the Alarm Action Editor can result in a smooth running system or an excessive duplication of actions (such as sending of emails). The guidelines are designed to support a smooth running system."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_alarmaction_connectionis.html
folder: SpotlightEnterprise
---



## Where the alarm severity is...

When combining **The alarm severity is…** and **The Connection is…** conditions and a severity is repeated, order the rules with the highest severity first and lowest severity last. Add the **Stop processing further rules** action to the last rule in the list.

```
For all alarms
where the connection is M601\SQLK8
      and the alarm is Backup - Days Since Last Full Backup
 and the alarm severity is High
   send email to jsmith@company com


For all alarms
where the connection is M601\SQLK8
      and the alarm is Backup - Days Since Last Full Backup
 and the alarm severity is Medium or High
   send email to dbrown@company com
 and stop processing further rules
```


## Where the alarm is...

When multiple rule(s) apply to the same alarm, rules with **The Connection is...** condition should be ordered before rules that don't have **The Connection is...** condition.

```
For all alarms
where the connection is M601\SQLK8
      and the alarm is Backup - Days Since Last Full Backup
   send email to dbrown@company com
 and stop processing further rules

For all alarms
where the alarm is Backup - Days Since Last Full Backup
   send email to jsmith@company com
```

 Following is what the list may look like in the list of rules, where the rule name is *the name of the alarm* (when the alarm applies to all connections) and *the name of the alarm for connection* (when the rule applies to the alarm on a specific connection)

```
Backup - Days Since Last Full Backup for M601\SQLK8
Backup - Days Since Last Full Backup for M605\SQLK8
Backup - Days Since Last Full Backup
```


## Stop processing further rules

Consider adding the Stop processing further rules action.

In this example an email is sent to jsmith every time the **Backup - Days Since Last Full Backup alarm** is raised. In addition, an email is sent to *dbrown* when the alarm is raised on connection *M601\SQLK8*.

```
For all alarms
where the connection is M601\SQLK8
      and the alarm is Backup - Days Since Last Full Backup
   send email to dbrown@company com


For all alarms
where the alarm is Backup - Days Since Last Full Backup
   send email to jsmith@company com
```

In this example an email is sent to *jsmith* every time the **Backup - Days Since Last Full Backup alarm** is raised - except when the alarm is raised on connection *M601\SQLK8*. An email is sent to *dbrown* (instead) when the alarm is raised on connection *M601\SQLK8*.

```
For all alarms
where the connection is M601\SQLK8
      and the alarm is Backup - Days Since Last Full Backup
   send email to dbrown@company com
 and stop processing further rules

For all alarms
where the alarm is Backup - Days Since Last Full Backup
   send email to jsmith@company com
```


{% include links.html %}
