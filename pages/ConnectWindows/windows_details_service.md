---
title: Service details
last_updated: July 29, 2016
summary: "Details of the selected Windows service. Select the service on the Services grid."
sidebar: c_windows_sidebar
permalink: windows_details_service.html
folder: ConnectWindows
---



## Display Name

This is the friendly name of the service.

## Description

The localised service description as seen in the services control panel applet.

## Executable

The full path of the executable that is run as a service.

## Startup Type

This shows how the service acts on Windows start

### Automatic

Starts every time the system starts, after the **Boot** and **System** devices start.

### Manual

Requires manual startup or another service or device to request its startup.

### Disabled

Does not start and cannot be manually started.

### Boot

Starts every time the system starts, before any other devices start.

### Demand

Starts when the device is detected or needed for a specific event.

### System

Starts every time the system starts, after the Boot devices start.

## Service status

The runtime status of the service, one of: Started, Stopped, Starting, Stopping.

## Service type

Shows what type of program this is.

## Controls accepted

Accepted commands to control the service, one of: Start, Stop, Suspend, Resume, Pause, Restart.

## Service account

The account under which the service runs.

{% include links.html %}
