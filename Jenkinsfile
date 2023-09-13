pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the Git repository
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[url: 'https://github.com/spandanasy/hros.git']]])
            }
        }
        stage('Run Tests') {
            steps {
                // First, navigate to the directory for module 3 tests
                dir('C:/Users/Spandana SY-int-219/PycharmProjects/HROS/testcycles/module 3 folder/testscenario') {
                    // Run Robot Framework tests for module 3
                    bat 'robot testcycle.robot'
                }
            }
        }
    }
}
