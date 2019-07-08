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
                sh 'cp -rf . /usr/share/nginx/html'
                sh 'ls -al /usr/share/nginx/html'
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