#!/usr/bin/env groovy

pipeline {

    agent {
        docker {
            image 'nginx'
            args '-u root -v ${pwd}:/usr/share/nginx/html:ro'
        }
    }

    stages {
        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'curl -I http://localhost 2>/dev/null | head -n 1'
            }
        }
    }
}