def BuildHelp()
{
    try
    {
        stage 'Build Help'
        def HelpDir=pwd()
        def wixToolsetBin="C:\\Program Files (x86)\\WiX Toolset v3.9\\bin" 

        // balloon help
        bat """jekyll build --config "${HelpDir}\\_configBalloonHelpOffline.yml" -s "${HelpDir}" -d "${HelpDir}\\spotlightHelp_siteBalloonHelp" """
        bat """"${wixToolsetBin}\\heat.exe" dir "${HelpDir}\\spotlightHelp_siteBalloonHelp" -o "${HelpDir}\\balloonhelpsite.wxs" -scom -sfrag -srd -sreg -gg -cg BalloonHelpSiteGroup -dr BALLOONHELP_SITE_DIR """

        // main help
        bat """jekyll build --config "${HelpDir}\\_configOffline.yml" -s "${HelpDir}" -d "${HelpDir}\\spotlightHelp_site" """
        bat """"${wixToolsetBin}\\heat.exe" dir "${HelpDir}\\spotlightHelp_site" -o "${HelpDir}\\helpsite.wxs" -scom -sfrag -srd -sreg -gg -cg HelpSiteGroup -dr HELP_SITE_DIR """
        
        // map file for client F1
        bat """"${wixToolsetBin}\\heat.exe" file "${HelpDir}\\csh.map" -o "${HelpDir}\\helpmap.wxs" -scom -sfrag -srd -sreg -gg -cg HelpMapGroup -dr Help_dir """
        
    }
    catch (any)
    {
        emailext recipientproviders: [[$class: 'CulpritsRecipientProvider']], to: 'steven.taylor@software.dell.com', subject: "Spotlight Online Help build failed", body: "See ${env.BUILD_URL} for full details"
        throw any
    }
}

return this;
