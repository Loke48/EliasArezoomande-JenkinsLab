pipeline {
  agent any 
  stages {
    stage('Build') {
      steps {
        sh "mvn compile"
      }
    }  
    stage('Test') {
      steps {
        sh "mvn test"
      }
     post {
      always {
        junit 'target/surefire-reports/TEST*.xml'
      }
     }
  	}
     stage('newman') {
            steps {
                sh 'newman run postman/Elias_postman_collection.json --environment postman/Elias_postman_environment.json'
            }
           
        }
 stage('Robot Framework System tests with Selenium') {
      steps {
        sh 'robot --variable BROWSER:headlesschrome -d Results bookingtest/LabbRobot'
      }
     
}
}
}