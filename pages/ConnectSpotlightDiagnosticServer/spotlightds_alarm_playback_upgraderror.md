---
title: ﻿Diagnostic Server - Playback Alarm - Upgrade Error
last_updated: July 29, 2016
summary: "Following upgrade of the Spotlight Diagnostic Server, the Playback Database is automatically upgraded the next time it is accessed by the Spotlight Diagnostic Server."
sidebar: c_spotlightds_sidebar
permalink: spotlightds_alarm_playback_upgradeerror.html
id: playback.alarm_upgrade error
folder: ConnectSpotlightDS
---



For details of the alarm, see <xref href="spotlight:AlarmLog.AlarmLogCurrent" format="html" scope="external">Spotlight Today</xref>.

If in your environment the Playback Database is replicated as per a Microsoft Replication database the upgrade can fail if schema changes are required that can only be made when replication is turned off. To successfully upgrade the Playback Database, the steps are to: turn replication off, upgrade the Spotlight Diagnostic Server, then re-enable replication.


{% include links.html %}
