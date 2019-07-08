#!/usr/bin/env groovy

pipeline {

    agent { 
        dockerfile {
            label 'nginx-curl-dika'
            args '-u root'
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