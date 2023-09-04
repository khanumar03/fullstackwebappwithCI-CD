pipeline {
    agent any

    stages {
        stage("Build") {
            steps  {
                sh 'ls'
                sh 'docker -v'
                withCredentials([string(credentialsId: 'DATABASEURL',  variable: 'D_KEY')]) {
                    sh 'export DATABASEURL=${D_KEY}'
                    sh 'echo ${DATABASEURL}'
                }
            }
        }

        stage("test") {
            steps {
                echo 'testing'
            }
        }

        stage("Deployment") {
            steps {
                dir ("build") {
                    sh 'ls'
                }
            }
        }
    }
}