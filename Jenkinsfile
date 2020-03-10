
timestamps
{
    nodeWithProperWorkspace('VS2017ForSoSSE131', 'SE')
    {
        stage 'Prepare'
            bat "RD /S /Q . > nul || echo bypass error" 
    		bat 'md OnlineHelp | exit /b 0'
    		def CurrentDir=pwd()
        stage 'Checkout SpotlightHelp'
            dir("${CurrentDir}/OnlineHelp") {
				checkout scm
			}
        stage 'Build SpotlightHelp'
            dir("${CurrentDir}/OnlineHelp") {
                def buildhelp = load("_build/BuildHelp.groovy")
				buildhelp.BuildHelp()
            }
        stage 'Upload to Artifactory'
            def zip = '"C:\\Program Files\\7-Zip\\7z.exe"'
            dir("${CurrentDir}/OnlineHelp") { 
                bat """${zip} a ${CurrentDir}\\OnlineHelp\\OnlineHelp.zip ${CurrentDir}\\OnlineHelp\\_install"""
				bat """${zip} a ${CurrentDir}\\OnlineHelp\\OnlineHelp.zip ${CurrentDir}\\OnlineHelp\\_site"""
				bat """${zip} a ${CurrentDir}\\OnlineHelp\\OnlineHelp.zip ${CurrentDir}\\OnlineHelp\\_siteBalloonHelp"""
            
                try {
                    def server = Artifactory.newServer url: 'https://artifactory.labs.quest.com/artifactory', credentialsId: 'artifactory-service-xman'
                    def uploadSpec = """{ 
                        "files": [
                            { "pattern": "OnlineHelp.zip", "target": 
                            "Spotlight-Enterprise-libs/SpotlightHelp/${env.BRANCH_NAME}/OnlineHelp.zip"}
                        ]
                    }""" 
                    def buildInfo = server.upload(uploadSpec)
                    echo "Upload SpotlightHelp artifacts to Artifactory end : ${buildInfo}"
                } catch(error) {
                    echo "Upload Files to Artifactory Failed: ${error}"
                    throw error
                }
            }
    }
}

void nodeWithProperWorkspace(def slave, def space, def body) {
    node (slave) {
        ws(space) {
            body.call()
        }
    }
}
