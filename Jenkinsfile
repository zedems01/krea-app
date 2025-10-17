pipeline {
  agent any
  environment {
        GITHUB_CREDENTIALS = credentials('github') // Assurez-vous que "github" correspond au nom de votre credential
    }
  stages {
    stage('checkout code') {
      steps {
        git(url: 'https://github.com/zedems01/krea-app', branch: 'test-jenkins')
        echo 'Successfully pull the repo code'
      }
    }

    stage('Deploy') {
      steps {
        echo 'Deplyment for this step 2 done!!'
      }
    }

  }
}