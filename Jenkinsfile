#!/usr/bin/env groovy

pipeline {

    agent {
        docker {
            image 'nginx:latest'
        }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'apt -y update && apt -y install curl'
                sh 'cp -rf www/* /usr/share/nginx/html'
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