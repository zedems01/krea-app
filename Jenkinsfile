pipeline {
  agent any
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