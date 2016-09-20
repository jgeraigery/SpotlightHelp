---
title: Services grid
last_updated: July 29, 2016
summary: "This shows details of Windows services and devices."
sidebar: c_windows_sidebar
permalink: windows_grid_services.html
id: Services.ServicesGrid
folder: ConnectWindows
---

## How to stop or start a service or device

You can attempt to stop or start a service or device by right-clicking the service or device in the grid and selecting **Start Service** or **Stop Service** from the shortcut menu. You must be a member of the Spotlight Diagnostic Administrators group to use the **Start Service** and **Stop Service** options.

{% include tip.html content="To see which process is running the selected service, right-click the service and click **Select Process**." %}

## The columns of the grid are:

### Service

This shows the name of the service or driver as reported to the system. The tree to the left of the names is a dependency tree, showing all services or drivers that depend on the particular service.

### Display Name

This is the friendly name of the service or driver.

### Start up

This shows how the service acts on Windows start

Automatic | Starts every time the system starts, after the **Boot** and **System** devices start.
Manual | Requires manual startup or another service or device to request its startup.
Disabled | Does not start and cannot be manually started.
Boot | Starts every time the system starts, before any other devices start.
Demand | Starts when the device is detected or needed for a specific event.
System | Starts every time the system starts, after the Boot devices start.

### Service Type

Shows what type of program this is.

### Current State

Shows what the current status is of the service or driver. The status can be Running, Not Running or Paused.

### Service Account

The account under which the service runs.

### Running PID

Is the process ID of the application running the service. This is available only for services.

### Process Path Name

Shows the path of the process or system extension that controls this service or device. This cannot be retrieved for all devices.

{% include links.html %}
