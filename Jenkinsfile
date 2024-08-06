pipeline {
    agent any

    environment {
	    BRANCH_NAME = 'main'
        LOCAL_DESTINATION_PATH_DEVELOPMENT = 'C:\\sourcecode\\development'
        LOCAL_DESTINATION_PATH_TEST = 'C:\\sourcecode\\test'
        LOCAL_DESTINATION_PATH_UAT = 'C:\\sourcecode\\uat'
        LOCAL_DESTINATION_PATH_MAIN = 'C:\\sourcecode\\main'
    }

    stages {
	
	
	    stage('Checkout') {
           steps {
                // Checkout the code from Git
                git branch: "${BRANCH_NAME}",url: 'https://github.com/shrikantalone66/node-js-demo-project.git'
            }
        }
	
        stage('Deploy') {
            steps {
                script {
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
                            sh "cp -r * ${env.LOCAL_DESTINATION_PATH_MAIN}"
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
