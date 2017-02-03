---
title: Waitopedia
summary: "Waitopedia is a comprehensive resource of information about SQL Server waits. It combines data analysis with descriptions and insights that are edited by the community."
sidebar: p_cloud_sidebar
permalink: cloud_waitopedia.html
---

The analysis is based on data collected from SQL Server instances and uploaded by Spotlight Essentials users.

For each wait you can see its category and SQL Server versions that it can occur on:wait-category-versions

{% include imageCloud.html file="waitopedia_wait-category-versions.png" alt="Category of Wait" %}


You can also check how common a given wait is. For example, PAGELATCH_EX is very common:pagelatch-ex-very-common

{% include imageCloud.html file="waitopedia_pagelatch-ex-very-common.png" alt="Common Waits" %}

Whereas PREEMPTIVE_COM_GETROWSBYBOOKMARK is very rare:preemptive_com_getrowsbybookmark-very-rare

{% include imageCloud.html file="waitopedia_preemptive_com_getrowsbybookmark-very-rare.png" alt="Rare Waits" %}

Also you can check wait latency – how much time does the wait take for our users:latency

{% include imageCloud.html file="waitopedia_latency-1024x561.png" alt="Latency Distribution" %}

Waitopedia is a collaborative resource. We seeded wait descriptions with the Microsoft documentation, but sometimes the waits are undocumented. Please go over to Waitopedia and provide information you know, or join the discussion!

[Check out Waitopedia](https://www.spotlightessentials.com/waitopedia)



{% include links.html %}
