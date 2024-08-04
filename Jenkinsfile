#!/usr/bin/env groovy

@Library('my-shared-lib')_
def gv

pipeline {
    agent any
    tools {
        maven 'Maven-3.6' 
    }
    stages {
        stage("init") {
            steps {
                script {
                    gv = load "script.groovy"
                }
            }
        }
                stage("show name") {
            steps {
                echo "Hello, it's Ghaneem"
            }
        }
        stage("build jar") {
            steps {
                script {
                    buildjar()
                }
            }
        }
        stage("build image") {
            steps {
                script {
                    buildimage()
                }
            }
        }
        stage("deploy") {
            steps {
                script {
                    gv.deployApp()
                }
            }
        }
    }   
}