pipeline {
    agent any

    environment {
	BRANCH_NAME = 'Development'
        LOCAL_DESTINATION_PATH_DEVELOPMENT = 'C:\\sourcecode\\development'
        LOCAL_DESTINATION_PATH_TEST = 'C:\\sourcecode\\test'
        LOCAL_DESTINATION_PATH_UAT = 'C:\\sourcecode\\uat'
        LOCAL_DESTINATION_PATH_MAIN = 'C:\\sourcecode\\main'
	REMOTE_HOST = '192.168.105.151'
        REMOTE_USERNAME = 'shrikant alone'
    }

    stages {
	        stage('Checkout') {
            steps {
                // Checkout the code from Git
                git branch: "${BRANCH_NAME}", credentialsId: 'gitlab', url: 'https://github.com/shrikantalone66/node-todo-cicd.git'
            }
        }
	
	
	
        stage('Deploy') {
            steps {
                script {
		    def storagePath
                    switch (env.BRANCH_NAME) {
                        case 'Development':
                            echo 'Development branch deploying...'
                            sh "cp -r * ${env.LOCAL_DESTINATION_PATH_DEVELOPMENT}"
                            break
                        case 'Test':
                            echo 'Test branch deploying...'
                            sh "cp -r * ${env.LOCAL_DESTINATION_PATH_TEST}"
                            break
                        case 'UAT':
                            echo 'UAT branch deploying...'
                            sh "cp -r * ${env.LOCAL_DESTINATION_PATH_UAT}"
                            break
                        case 'main':
                            echo 'main branch deploying...'
                           //sh "cp -r * ${env.LOCAL_DESTINATION_PATH_MAIN}"
			     storagePath =  sh "scp -r * ${REMOTE_USERNAME}@${REMOTE_HOST}:${LOCAL_DESTINATION_PATH_MAIN}/"
                            break
                        default:
                            echo "No deployment configured for branch ${env.BRANCH_NAME}"
                            return
                    }
                }
            }
        }
    }
}
