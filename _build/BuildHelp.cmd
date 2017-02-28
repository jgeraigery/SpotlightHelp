@setlocal enabledelayedexpansion enableextensions

@set useJekyllBundle=%~1
@set HelpDir=%~2
@set wixToolsetBin=%~3

@if not defined useJekyllBundle @set useJekyllBundle=0
@if /i "%useJekyllBundle%" == "yes" @set useJekyllBundle=1
@if /i "%useJekyllBundle%" == "y" @set useJekyllBundle=1
@set /a useJekyllBundle=%useJekyllBundle%
@if %useJekyllBundle% EQU 1 set jekyllCmd=bundle exec jekyll

@if not defined jekyllCmd @set jekyllCmd=jekyll
@if not defined wixToolsetBin @for /L %%I in (9,1,11) do @set _temp=%ProgramFiles(x86)%\WiX Toolset v3.%%I\bin && if exist "!_temp!" set wixToolsetBin=!_temp!
@if not defined HelpDir @set HelpDir=%~dp0..

:: jekyll builds - folders starting with '_' will not be included in Jekyll outputs
@echo Build offline help
@call %jekyllCmd% build --config "%HelpDir%\_configOffline.yml" -s "%HelpDir%" -d "%HelpDir%\_site"

@echo Build offline balloon help
@call %jekyllCmd% build --config "%HelpDir%\_configBalloonHelpOffline.yml" -s "%HelpDir%" -d "%HelpDir%\_siteBalloonHelp"

@echo Make a trimmed copy for Spotlight installer
@set siteInstaller=%HelpDir%\_siteInstaller
@robocopy "%HelpDir%\_site" "%siteInstaller%" /NP /NS /NC /NJH /NJS /NDL /NFL /MIR /XF *.otf /XF *.eot /XF *.svg /XF *.ttf /XF cloud_*.html /XF mobile_*.html /XF CNAME /XF *.sh /XF sitemap.xml /XF search.json /XF README.md /XF extensions_*.html /XD pdfconfigs /XD imagesCloud /XD imagesExtensions /XD imagesMobile

@if exist "%siteInstaller%.zip" @del "%siteInstaller%.zip"
@call "%~dp0ziptool" -c "%siteInstaller%" "%siteInstaller%.zip"

:: Wix fragements for installing help
@"%wixToolsetBin%\heat.exe" dir "%HelpDir%\_site" -o "%HelpDir%\_install\helpsite.wxs" -nologo -scom -sfrag -srd -sreg -gg -cg HelpSiteGroup -dr HELP_SITE_DIR
@"%wixToolsetBin%\heat.exe" dir "%HelpDir%\_siteBalloonHelp" -o "%HelpDir%\_install\balloonhelpsite.wxs" -nologo -scom -sfrag -srd -sreg -gg -cg BalloonHelpSiteGroup -dr BALLOONHELP_SITE_DIR

:: map file for client F1
@"%wixToolsetBin%\heat.exe" file "%HelpDir%\_install\csh.map" -o "%HelpDir%\_install\helpmap.wxs" -nologo -scom -sfrag -srd -sreg -gg -cg HelpMapGroup -dr Help_dir
