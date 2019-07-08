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
                sh 'rm -rf /var/www/html && cp -rf . /var/www/html'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'curl -I http://localhost 2>/dev/null | head -n 1'
            }
        }
    }
}