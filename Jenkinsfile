pipeline {
    agent {
        docker {
            image 'bitnami/kubectl:latest'
        }
    }

    environment {
        K8S_MANIFEST = "k8s-deployment.yaml"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/yanarowana123/jenkins-test'
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

