pipeline {
    agent any
    tools {
        maven 'Maven-3.6' //from the tools configartion
    }
    stages {
        stage("Bulid jar") {
            steps {
                script {
                    echo = "building the application..."
                    sh 'mvn package'
                }
            }
        }
        stage("build image and push to docker hub") {
            steps {
                echo "building the docker image..."
                withCredentials([usernamePassword(credentialsId: 'docker-hub', passwordVariable: 'PASS', usernameVariable: 'USER')])
                
                    sh 'docker build -t ghanemovic/test-app:jev-2.0 .'
                    sh "echo $PASS | docker login -u $USER --password-stdin"
                    sh 'docker push ghanemovic/test-app:jev-2.0'
            }   
        }
        stage("deploy app") {
            steps {
                script {
                    echo 'deploying the application...'
                }
            }
        }
    }   
}