pipeline {
    agent any

    stages {

        stage('Install') {
            steps {
                bat 'echo No external dependencies required for this frontend project.'
            }
        }

        stage('Test') {
            steps {
                bat '"C:\\Program Files\\Git\\usr\\bin\\bash.exe" tests/test.sh'
            }
        }

        stage('Build') {
            steps {
                bat 'echo Static HTML, CSS and JavaScript project - no build step required.'
            }
        }

    }
}