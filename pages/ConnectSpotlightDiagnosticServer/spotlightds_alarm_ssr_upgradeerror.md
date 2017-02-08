---
title: ﻿Diagnostic Server - Repository Alarm - Upgrade Error
last_updated: July 29, 2016
summary: "Following upgrade of the Spotlight Diagnostic Server, the Spotlight Statistics Repository is automatically upgraded the next time it is accessed by the Spotlight Diagnostic Server. This may be some time following the upgrade of the Spotlight Diagnostic Server, depending on how often the Spotlight Statistics Repository is accessed."
sidebar: p_enterprise_sidebar
permalink: spotlightds_alarm_ssr_upgradeerror.html
id: repository.alarm_upgrade error
folder: ConnectSpotlightDS
---



For details of the alarm, see <xref href="spotlight:AlarmLog.AlarmLogCurrent" scope="external" format="html">Spotlight Today</xref>.

If in your environment the Spotlight Statistics Repository is replicated as per a Microsoft Replication database the upgrade can fail if schema changes are required that can only be made when replication is turned off. To successfully upgrade the Spotlight Statistics Repository, the steps are to: turn replication off, upgrade the Spotlight Diagnostic Server, then re-enable replication.


{% include links.html %}
