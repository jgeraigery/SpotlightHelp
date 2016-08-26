def BuildHelp()
{
    try
    {
        stage 'Build Help'
        def HelpDir=pwd()

        bat """jekyll build --config "${HelpDir}\\spotlightHelp_configOffline.yml" -s "${HelpDir}" -d "${HelpDir}\\spotlightHelp_site" """
        bat """jekyll build --config "${HelpDir}\\spotlightHelp_configOffline.yml" -s "${HelpDir}" -d "${HelpDir}\\spotlightHelp_site" """
    }
    catch (any)
    {
        emailext recipientproviders: [[$class: 'CulpritsRecipientProvider']], to: 'steven.taylor@software.dell.com', subject: "Spotlight Online Help build failed", body: "See ${env.BUILD_URL} for full details"
        throw any
    }
}

return this;
