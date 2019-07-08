#!/usr/bin/env groovy

pipeline {

    agent {
        docker {
            image 'nginx'
            args '-u root'
        }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'apt -y update && apt -y install curl'
                sh 'cp -rf www/* /usr/share/nginx/html'
                sh 'sleep 60'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'curl localhost'
            }
        }
    }
}