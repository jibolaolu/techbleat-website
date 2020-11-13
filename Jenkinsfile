pipeline {
    agent any 
    stages {
        stage ('Copy index file') {
            steps {
                echo "copying index file"
                sh 'sudo cp index.html /usr/share/nginx/html'
            }
        }
        stage ('Copy jpg file') {
            steps {
    echo "copying index file"
                sh 'sudo cp devops.jpg /usr/share/nginx/html'
            }
        }
        stage ('Job done') {
            steps {
                echo "task complete"
            }
        }
    }
}