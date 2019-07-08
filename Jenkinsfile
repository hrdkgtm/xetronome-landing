#!/usr/bin/env groovy

pipeline {

    agent { 
        dockerfile {
            args '-u root -t nginx-curl-dika:v0.1.0'
        }
//        docker {
//            image 'nginx'
//            args '-u root'
//        }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'cp -rf www/* /usr/share/nginx/html'
                sh 'nginx'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'curl localhost'
            }
        }
        stage('Deploy to staging'){
            steps {
                echo 'Deploying to staging'

            }
        }
        stage('Deploy to Production'){
            steps{
                echo 'Deploying to production'

            }
        }
    }
}