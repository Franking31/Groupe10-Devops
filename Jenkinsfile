pipeline {
    agent any
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('odoo-app', '.')
                }
            }
        }
        stage('Run Tests') {
            steps {
                script {
                    // Ajoute ici des tests d'intégration ou des tests unitaires pour ton application
                }
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                script {
                    // Utilisation de Kubectl ou Ansible pour déployer sur Minikube ou un cluster Kubernetes
                }
            }
        }
    }
}

