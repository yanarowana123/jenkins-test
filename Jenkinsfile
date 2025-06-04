pipeline {
    agent any

    environment {
        K8S_MANIFEST = "k8s-deployment.yaml"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/yourusername/go-k8s-app.git'
            }
        }

        stage('Deploy to Minikube') {
            steps {
                script {
                    sh "kubectl apply -f ${K8S_MANIFEST}"
                }
            }
        }
    }
}

