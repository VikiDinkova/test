pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'npm --version'
                sh 'node -v'
                sh 'cd scripts'
                sh 'bash ./buildSdk'
                
                echo '...............'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
