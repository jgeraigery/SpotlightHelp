---
title: Health Check for Spotlight and SQL Server Management Studio
sidebar: p_cloud_sidebar
permalink: cloud_healthcheck.html
---


## SYSTEM HEALTH

A wholistic view of the health of your system and the ability to drill down and view detail at a granular level.

{% include imageCloud.html file="about-system-health-icon.png" alt="System Health" %}


## MOST EXPENSIVE QUERIES

View the top ten SQL queries by totals and averages of either Reads, Writes, Duration or CPU.

{% include imageCloud.html file="about-most-ex-queries-icon.png" alt="Most Expensive Queries" %}


The Spotlight Health Check provides a prioritized list of key health issues enabling you to pinpoint and address them within your SQL Server infrastructure.

Implement healthchecks for Security, Disaster Recovery, Index Optimization, Memory, I/O, and Configuration.

And we’re adding new healthchecks all the time!
Get insight into the performance of each of your instances, including recent history of the instance’s performance, system waits and I/O latency.
See how your performance is trending over time and compare one instance with another. Using aggregated statistics from the entire Spotlight community you can compare how your instances perform.
Spotlight Health checks are available to everyone at no cost.
System Health Issues
Health Checks currently available

Security
Guest User Access


Using this check is you can identify whether the user Guest has access to any databases they should not have access to.
Because any login can access the database through the guest user, access via the guest user should be disabled for user databases.
Login Password Policy


The intent of this health check is to identify logins that have a password policy vulnerability.
By analyzing SQL logins we can determine if any are not following best practice policy. If either the password policy is not checked, or there is no expiration for the password (or both) these logins are listed by name, so you can identify them and take action.
Disaster Recovery
Simple Recovery Model


The purpose of this health check is inform you about databases whose recovery-model potentially exposes them to data-loss.
For a recovery without any data-loss to be possible, the recovery model of the database must be either Full or Bulk Logged. If the recovery model of the database is Simple, the transactions since the last backup are lost.
Database Backups


This check identifies databases that are exposed to the risk of data-loss, due to absent backups.
It also provides a list of steps that can be taken to resolve the issue.
Index Optimization
Missing Indexes


The purpose of this check is to alert the user to the presence of missing indexes, the relative impact their creation may yield and the SQL required to create them.
SQL Server maintains a list of the indexes it considers to be missing from each database. The indexes are ranked based on the relative improvement they would yield if they existed.
Memory
Physical Memory Pressure


This health check identifies if a server is experiencing physical memory pressure.
It compares total physical memory: available, consumed and consumed by a SQL Server Instance over a 24 hour period. Providing a complete snapshot of Physical Memory Pressure on your system.
Ad-hoc Workload


This check calculates the amount of memory in megabytes in the total cache consumed by ad-hoc plans over a 24 hour period. It also examines the relationship between ad-hoc plans, the plan cache and the total cache. If the percentage of the plan cache consumed by ad-hoc plans exceeds 10% it means the plan cache is too full of ad-hoc plans.
I/O
Writelog Wait


WRITELOG wait represents the time spent waiting on a LOG I/O to complete. Operations that commonly cause log flushes are checkpoints and transaction commits.
We check if your WRITELOG Wait-time is too high a proportion of total wait time. If it is too high this may indicate a bottleneck on your SQL Server instance.
Configuration
Compatibility Level


It’s now possible to review databases with a non default compatibility level and decide if they should be changed to the default compatibility level.
There may be a good reason to have these databases set to a non-default compatibilitiy level. Application compatibility is obviously a primary reason.



{% include links.html %}
