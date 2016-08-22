---
title: System drivers grid
last_updated: July 29, 2016
summary: "This grid shows details of Windows kernel drivers and file system drivers."
sidebar: c_windows_sidebar
permalink: windows_grid_systemdrivers.html
id: SystemDrivers.SystemDriversGrid
folder: ConnectWindows
---



The columns in the grid are:

## Driver

The name of the driver as reported to the system.

## Display Name

The friendly name of the driver.

## Type

Shows if the device is a **Kernel** or **File System** driver.

## State

Shows if the driver is **Running** or **Stopped**.

## Start Mode

This shows how the driver acts when Windows starts.

Auto | Starts every time the system starts, after the **Boot** and **System** devices start.
Manual | Requires manual startup or another service or device to request its startup.
Disabled | Does not start and cannot be started manually.
Boot | Starts every time the system starts, before any other devices start.
Demand | Starts when the device is detected or needed for a specific event.
System | Starts every time the system starts, after the Boot devices start.

## Accepts Stop

Identifies whether a driver can be stopped. This information is available only for currently running devices.

## Path Name

Shows the file location of the device. This cannot be retrieved for all devices.



{% include links.html %}
