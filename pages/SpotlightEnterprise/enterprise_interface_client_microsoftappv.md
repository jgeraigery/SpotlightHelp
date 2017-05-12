---
title: Support for a Microsoft App-V deployment
summary: "Microsoft Application Virtualization (also known as App-V) is an application virtualization and application streaming solution from Microsoft. This page provides information regarding running a Spotlight Client in an App-V deployment."
sidebar: p_enterprise_sidebar
permalink: enterprise_interface_client_microsoftappv.html
folder: SpotlightEnterprise
---




Spotlight supports deploying a global configuration file

```
%ProgramData%\Quest Software\Spotlight\Default\config.xml
```

which will be copied to the user-specific location on startup of the Spotlight Client.

Here is an example file which pre-configures the three most useful items:

```xml
<UserConfigurations>
   <!-- remove startup nagging -->
   <ConfigItem Name="Running for First Time" ProductId="SoSSE" Value="bool:0"/>
   <!-- this configures the address the DS connects first during startup -->
   <ConfigItem Name="Diagnostics Server\PreferredAddress" ProductId="Global" Value="str:fully.qualified.host.name"/>
   <!-- starts with the All heatmap -->
   <ConfigItem Name="StartupEnterprise\Location" ProductId="Console" Value="str:DSManager.ViewsTabs.&quot;All&quot;\DSManager.HeatMap\\&quot;All&quot;"/>
</UserConfigurations>
```

This is a simple XML file which should be straight-forward to configure for anyone familiar with App-V.
For a complete list of all supported configuration options please consult a config.xml file from an already installed Spotlight client, which can be found in

```
%AppData%\Quest Software\Spotlight\<hex id>\config.xml
```

{% include links.html %}
