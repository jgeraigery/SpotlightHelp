---
title: Flashback Space Usage Alarm
last_updated: July 29, 2016
summary: "The Flashback Space Usage alarm is raised when the amount of used space in the Flashback Recovery Area exceeds a threshold."
sidebar: c_oracle_sidebar
permalink: oracle_alarm_flashbackspaceusage.html
id: Home.FlashbackLogs.Flashback Pct Used.alarm
folder: ConnectOracle
---


Files stored in the Recovery Area may be **reclaimable** or **non-reclaimable**. Non-reclaimable files include archived redo logs, which must be backed up before being deleted. Flashback logs are reclaimable, and Oracle will delete old logs if necessary to free up space for newer logs or for archived redo logs.

If the flashback area is full, you may not be able to "flash back" the database as far as you have intended. In other words, your setting for **DB_RECOVERY_FILE_DEST_SIZE** may be too low to support the setting for **DB_FLASHBACK_RETENTION_TARGET**.





{% include links.html %}
