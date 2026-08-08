@Library('devops-shared-library') _

pipeline {

    agent any
    tools {
        maven 'mymaven'
    }
    stages {

        stage('Checkout') {
            steps {
                checkoutCode()
            }
        }

        stage('Build') {
            steps {
                mavenBuild()
            }
        }

        stage('Docker Build') {
            steps {
                dockerBuild(
                    'shaikmustafa/myapp',
                    "${BUILD_NUMBER}"
                )
            }
        }

        stage('Docker Push') {
            steps {
                dockerPush(
                    'shaikmustafa/myapp',
                    "${BUILD_NUMBER}"
                )
            }
        }
    }
}
