---
title: ﻿Archive Critical Failure Alarm
last_updated: July 29, 2016
summary: "Spotlight raises an Archive Critical Failure alarm when the number of working archive destinations for the database instance is about to fall below the minimum number needed to archive Oracle redo logs successfully."
sidebar: c_oracle_sidebar
permalink: oracle_alarm_archivecriticalfailure.html
id: Home.ArchiveLog.Critical Failure alarm
folder: ConnectOracle
---


## This occurs when:

* A MANDATORY archive destination become full, OR
* There are fewer working destinations than the number required for successful archiving (specified by the Oracle LOG_ARCHIVE_MIN_SUCCEED_DEST parameter).

When you see this alarm, you should make space in the archive log destination by purging – or by backing up to an offline medium – any archived files that are not immediately needed.

The calculated time to failure is based on the last three days of archived logs. Spotlight calculates the time to failure via the **V$ARCHIVED_LOG** table, and returns no estimate until the table contains at least 7 logs. This information is updated every 5 minutes.

## Suggestions for improving the archiving process

* Increase the number and/or size of the online redo log files.
* Evaluate the checkpoint interval and frequency.
* Evaluate the number of archive destinations.
* Add multiple archiver processes.

## About archiving

Archiving is important for safeguarding database changes and for recovery. It is important to protect and back up archive files to some offsite media.

There are three primary goals when archiving redo log files:

* All online redo logs should be archived and backed up successfully.
* Archiver busy waits should be prevented.
* Recovery time should be reduced by keeping all archives on disk from the last database backup.


{% include links.html %}
