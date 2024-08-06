pipeline {
    agent any

        stages{
        stage('Install Dependecies') {
            steps {
                
                sh 'npm install'
                
            }
        }

        stage('Build') {
            steps {
               
                sh 'npm build run'
                
            }
        }
     }

       
    }

   
