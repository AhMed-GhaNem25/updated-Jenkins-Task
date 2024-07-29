def gv = script.groovy
pipeline {
    agent any
    tools {
        maven 'Maven-3.6' //from the tools configartion
    }
    stages {
        stage("init") {
            steps {
                gv = load "script.groovy"
            }
        }
        stage("Bulid jar") {
            steps {
                script {
                    gv.buildJar()
                }
            }
        }
        stage("build image and push to docker hub") {
            steps {
                script {
                    gv.buildImage()
                }
        }
        }
        stage("deploy app") {
            steps {
                script {
                    gv.deployApp()
                }
            }
        }
    }   
}