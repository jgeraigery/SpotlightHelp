def BuildHelp()
{
    try
    {
        stage 'Build Help'
        def HelpDir=pwd()
        bat """call "${HelpDir}\\_build\\BuildHelp.cmd"""""
        
    }
    catch (any)
    {
        emailext recipientproviders: [[$class: 'CulpritsRecipientProvider']], to: 'steven.taylor@software.dell.com', subject: "Spotlight Online Help build failed", body: "See ${env.BUILD_URL} for full details"
        throw any
    }
}

return this;
