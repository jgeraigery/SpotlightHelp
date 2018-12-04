---
title: Windows Powershell / Command line access
summary: "Schedule planned outages from Windows Powershell / the command line."
sidebar: p_enterprise_sidebar
permalink: enterprise_cfgmonitor_plannedoutage_commandline.html
folder: SpotlightEnterprise
---


## Requirements
Microsoft Windows Powershell 3.0 or above is required. Older operating systems (for example Windows Server 2008 R2) require an upgrade of the Windows Management Framework in order to access Spotlight from the command line. [Download Windows Management Framework 3.0](https://www.microsoft.com/en-us/download/details.aspx?id=34595)

For commands where user / password details are required ensure the user is a member of the [Spotlight Diagnostic User Groups](enterprise_backend_spotlightdiagnosticusergroups) **Spotlight Diagnostic Administrators** or **Spotlight Diagnostic Users**. Where there are multiple Spotlight Diagnostic Servers in a [federation](enterprise_backend_federation) the user is required to be a member of Spotlight Diagnostic Administrators or Spotlight Diagnostic Users for all Spotlight Diagnostic Servers in the federation.

## 1. Access Spotlight from Windows Powershell / the command line

From Windows Powershell, enter command: **Import-DS | Add-DS -PassThru**.

{% include tip.html content="Enter command **get-dS** to verify the Spotlight Diagnostic Server has been imported correctly." %}

{% include tip.html content="In some special situations or for some platforms, if **Import-DS** does not work for you then open the **Console** directory in the Spotlight Client installation directory (usually C:\Program Files (x86)\Quest Software\Spotlight Enterprise). Right click the file **ds-cli.cmd** and select **Open** to open the command prompt." %}


## 2. Command Spotlight from Windows Powershell / the command line

* Basic commands
* Windows Powershell / Command line parameters
* Add a list of connections
* Remove many connections

## Basic commands

### List Spotlight connections

```
Get-Connection
```

### Add a planned outage

```
Add-Outage -Address @{VMware="zhuvcradw10.prod.quest.corp"} -ReoccurenceType Once -StartDateTime "11/4/2018 12:46" -FinishDateTime "11/4/2018 13:46" -Description AddforVMware -PassThru
```


## Windows Powershell / Command line parameters

### -Address address

Supply the address of the Spotlight connection as per the form of the address entered in the **Spotlight Client \| Configure Connections \| Properties \| Details \| Address field**. For example: the Server Name, Server Instance Name, or IP address.

{% include note.html content="The connection name -Name is not available with the Add-Outage command." %}


### -ReoccurenceType value

Value | Description
------|------------
Once | This planned outage is scheduled to occur once only.
Daily | This planned outage is scheduled to occur every day.
Weekly | This planned outage is scheduled to occur on the selected days of the week.
Monthly | This planned outage is scheduled to occur on the selected day of the selected months.<br><br>To schedule a planned outage for the last day of the month over multiple months select 31 as the day of the month. This will schedule the outage to the last day of the month regardless of whether the month has 31 days.<br><br>If the selected day of the month is 29, 30 or 31 then for months that have fewer than those number of days the planned outage will be scheduled for the last day of the month.


### -StartDateTime "11/4/2018 12:46"
The start date and time of the planned outage of the form: "mm/dd/yyyy hh:mm"

Enclose the date and time in double quotes.

### -FinishDateTime "11/4/2018 13:46"
The end date and time of the planned outage of the form: "mm/dd/yyyy hh:mm"

Enclose the date and time in double quotes.


### -Description
A description for the planned outage as will be displayed on the [Planned Outage dialog][enterprise_cfgmonitor_plannedoutage].


{% include links.html %}
