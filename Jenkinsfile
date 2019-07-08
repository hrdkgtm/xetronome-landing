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
                sh 'git clone https://github.com/hrdkgtm/xetronome-landing.git'
                sh 'rm -rf /var/www/html && cp -rf xetronome-landing /var/www/html'
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