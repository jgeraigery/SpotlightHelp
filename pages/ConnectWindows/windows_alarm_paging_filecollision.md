---
title: Paging - File Collision Alarm
summary: "This alarm becomes active when there is more than one paging file on a single physical disk."
sidebar: c_windows_sidebar
permalink: windows_alarm_paging_filecollision.html
folder: ConnectWindows
---

This can cause performance degradation –  especially on IDE disks. IDE disks allow only a single disk operation  to be active on the bus at any time.

## To rectify this:

1. Open the Windows  Control Panel.
2. Double-click **System**.
3. Click the **Advanced** tab.
4. Select **Performance Settings**, and change the  paging file allocations.

{% include note.html content="You can configure this alarm to ignore certain values. See *Configure an Alarm to Ignore Certain Values* in the online help." %}
