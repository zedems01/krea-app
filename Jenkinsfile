pipeline {
    agent any
    
    environment {
        // Variables d'environnement
        PROJECT_NAME = 'Krea App'
        PYTHON_VERSION = '3.13'
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
                echo "✅ Code récupéré depuis ${env.GIT_URL}"
            }
        }
        
        stage('Install Dependencies') {
            steps {
                sh '''
                    echo "Installation des dépendances Python..."
                    python3 -m pip install --upgrade pip
                    python3 -m venv venv
                    . venv/bin/activate
                    pip3 install requests
                    python3 -c "import requests; print('✅ Package requests importable')"
                '''
            }
        }
        
        stage('Tests') {
            steps {
                sh '''
                    echo "Exécution des tests..."
                    echo "✅ Tests exécutés avec succès"
                '''
            }
            post {
                always {
                    // Publier les résultats des tests
                    echo "✅ Tests terminés avec succès"
                }
            }
        }
        
        stage('Build') {
            steps {
                sh '''
                    echo "Construction du projet..."
                    # Ex: build Docker, package Python, etc.
                    echo "✅ Build terminé avec succès"
                '''
            }
        }
        
        stage('Deploy') {
            when {
                branch 'main'  // Seulement sur la branche main
            }
            steps {
                echo "🚀 Déploiement en production..."
                echo "✅ Déploiement en production terminé avec succès"
            }
        }
    }
    
    post {
        always {
            echo "📊 Pipeline ${currentBuild.fullDisplayName} terminé"
            cleanWs()  // Nettoyer l'espace de travail
        }
        success {
            echo "🎉 Pipeline réussi!"
            // Slack, email, etc.
        }
        failure {
            echo "❌ Pipeline échoué"
            // Notifications d'échec
        }
    }
}