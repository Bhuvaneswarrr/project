pipeline {
    agent any

    stages {
        stage('build & deploy') {
            steps {
                sh 'chmod +x deploy.sh'
                sh './deploy.sh'
            }
        }
    }
}
