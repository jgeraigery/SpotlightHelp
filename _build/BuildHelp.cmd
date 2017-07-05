@setlocal enabledelayedexpansion enableextensions

@set useJekyllBundle=%~1
@set HelpDir=%~2
@set wixToolsetBin=%~3
@set roboOpts=/NP /NS /NC /NJH /NJS /NDL /NFL /MIR
@set roboNonOnlineEx=/XF CNAME /XF *.sh /XF sitemap.xml /XF README.md
@set roboNonSEEx=/XF cloud_*.html /XF mobile_*.html  /XF extensions_*.html /XD pdfconfigs /XD imagesCloud /XD imagesExtensions /XD imagesMobile

@if not defined useJekyllBundle @set useJekyllBundle=0
@if /i "%useJekyllBundle%" == "yes" @set useJekyllBundle=1
@if /i "%useJekyllBundle%" == "y" @set useJekyllBundle=1
@set /a useJekyllBundle=%useJekyllBundle%
@if %useJekyllBundle% EQU 1 set jekyllCmd=bundle exec jekyll

@if not defined jekyllCmd @set jekyllCmd=jekyll
@if not defined wixToolsetBin @for /L %%I in (9,1,11) do @set _temp=%ProgramFiles(x86)%\WiX Toolset v3.%%I\bin && if exist "!_temp!" set wixToolsetBin=!_temp!
@if not defined HelpDir @set HelpDir=%~dp0..
@set InstallDir=%HelpDir%\_install

:: jekyll builds - folders starting with '_' will not be included in Jekyll outputs
@echo Build PDF help
@set pdfHelpDir=%HelpDir%\_sitePDF
@set pdfHelpStageDir=%pdfHelpDir%Stage
@if exist "%pdfHelpStageDir%" @del /s /q "%pdfHelpStageDir%" 1>nul
@call %jekyllCmd% build --config "%HelpDir%\pdfconfigs\config_p_enterprise_pdf.yml" -s "%HelpDir%" -d "%pdfHelpStageDir%"
@robocopy "%pdfHelpStageDir%" "%pdfHelpDir%" %roboOpts% %roboNonOnlineEx% %roboNonSEEx%

@echo Build offline help
@call %jekyllCmd% build --config "%HelpDir%\_configOffline.yml" -s "%HelpDir%" -d "%HelpDir%\_site"

@echo Build offline balloon help
@call %jekyllCmd% build --config "%HelpDir%\_configBalloonHelpOffline.yml" -s "%HelpDir%" -d "%HelpDir%\_siteBalloonHelp"

@echo Make a trimmed copy for Spotlight installer
@set siteInstaller=%HelpDir%\_siteInstaller
@set installerHelp=%InstallDir%\InstallerHelp.zip
@robocopy "%HelpDir%\_site" "%siteInstaller%" %roboOpts% /XF *.otf /XF *.eot /XF *.svg /XF *.ttf %roboNonOnlineEx% %roboNonSEEx%

@if exist "%InstallerHelp%" @del "%InstallerHelp%"
@call "%~dp0ziptool" -c "%siteInstaller%" "%InstallerHelp%"

:: Wix fragements for installing help
@"%wixToolsetBin%\heat.exe" dir "%HelpDir%\_site" -o "%InstallDir%\helpsite.wxs" -nologo -scom -sfrag -srd -sreg -gg -cg HelpSiteGroup -dr HELP_SITE_DIR
@"%wixToolsetBin%\heat.exe" dir "%HelpDir%\_siteBalloonHelp" -o "%InstallDir%\balloonhelpsite.wxs" -nologo -scom -sfrag -srd -sreg -gg -cg BalloonHelpSiteGroup -dr BALLOONHELP_SITE_DIR

:: map file for client F1
@"%wixToolsetBin%\heat.exe" file "%InstallDir%\csh.map" -o "%InstallDir%\helpmap.wxs" -nologo -scom -sfrag -srd -sreg -gg -cg HelpMapGroup -dr Help_dir
