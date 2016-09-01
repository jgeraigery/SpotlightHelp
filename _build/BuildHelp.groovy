def BuildHelp()
{
    try
    {
        stage 'Build Help'
        def HelpDir=pwd()
        def wixToolsetBin="C:\\Program Files (x86)\\WiX Toolset v3.9\\bin" 

        // jekyll builds - folders starting with '_' will not be included in Jekyll outputs
        bat """jekyll build --config "${HelpDir}\\_configOffline.yml" -s "${HelpDir}" -d "${HelpDir}\\_site" """
        bat """jekyll build --config "${HelpDir}\\_configBalloonHelpOffline.yml" -s "${HelpDir}" -d "${HelpDir}\\_siteBalloonHelp" """


        // Wix fragements for installing help
        bat """"${wixToolsetBin}\\heat.exe" dir "${HelpDir}\\_site" -o "${HelpDir}\\_install\\helpsite.wxs" -scom -sfrag -srd -sreg -gg -cg HelpSiteGroup -dr HELP_SITE_DIR """
        bat """"${wixToolsetBin}\\heat.exe" dir "${HelpDir}\\_siteBalloonHelp" -o "${HelpDir}\\_install\\balloonhelpsite.wxs" -scom -sfrag -srd -sreg -gg -cg BalloonHelpSiteGroup -dr BALLOONHELP_SITE_DIR """
        // map file for client F1
        bat """"${wixToolsetBin}\\heat.exe" file "${HelpDir}\\_install\\csh.map" -o "${HelpDir}\\_install\\helpmap.wxs" -scom -sfrag -srd -sreg -gg -cg HelpMapGroup -dr Help_dir """
        
    }
    catch (any)
    {
        emailext recipientproviders: [[$class: 'CulpritsRecipientProvider']], to: 'steven.taylor@software.dell.com', subject: "Spotlight Online Help build failed", body: "See ${env.BUILD_URL} for full details"
        throw any
    }
}

return this;
