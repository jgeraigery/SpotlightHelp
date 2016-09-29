---
title: Non-reclaimable Flashback Space Alarm
last_updated: July 29, 2016
summary: "The Non-reclaimable Flashback Space alarm is raised when the amount of non-reclaimable used space in the Recovery Area (flashback area) exceeds a threshold."
sidebar: c_oracle_sidebar
permalink: oracle_alarm_nonreclaimableflashbackspace.html
id: home.flashbacklogs.flashback pct non reclaim.alarm
folder: ConnectOracle
---

Files stored in the recovery area may be reclaimable or non-reclaimable. Non-reclaimable files include archived redo logs, which must be backed up before being deleted. Flashback logs are reclaimable, and Oracle will delete old logs if necessary to free up space for newer logs or for archived redo logs.

The most likely cause of a fully non-reclaimable recovery area is that archived redo logs are stored in the Recovery Area and have not been backed up. This is potentially a serious situation since the database may stall ("archiver stuck" error) if Oracle cannot archive a redo log.



{% include links.html %}
