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
                sh 'yum -y install curl || apt -y install curl'
                sh 'cp -rf ./* /usr/share/nginx/html'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'curl http://localhost'
            }
        }
    }
}