def BuildHelp()
{
    try
    {
        stage 'Build Help'
        def HelpDir=pwd()

        bat """jekyll build --config "${HelpDir}\\_configOffline.yml" -s "${HelpDir}" -d "${HelpDir}\\spotlightHelp_site" """
        bat """jekyll build --config "${HelpDir}\\_configBalloonHelpOffline.yml" -s "${HelpDir}" -d "${HelpDir}\\spotlightHelp_siteBalloonHelp" """
    }
    catch (any)
    {
        emailext recipientproviders: [[$class: 'CulpritsRecipientProvider']], to: 'steven.taylor@software.dell.com', subject: "Spotlight Online Help build failed", body: "See ${env.BUILD_URL} for full details"
        throw any
    }
}

return this;
