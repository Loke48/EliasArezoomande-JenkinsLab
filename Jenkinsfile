pipeline {
  agent any 
  stages {
    stage('Build Run') {
      steps {
        sh "mvn compile"
      }
    }  
    stage('Test Run') {
      steps {
        sh "mvn test"
      }
     post {
      always {
        junit 'target/surefire-reports/TEST*.xml'
      }
     }
  	}
     stage('Postman Run with Newman') {
            steps {
                sh 'newman run postman/Elias_postman_collection.json --environment postman/Elias_postman_environment.json'
            }
           
        }
 stage('Robot Framework Run') {
      steps {
        sh 'robot --variable BROWSER:headlesschrome -d Results bookingtest/LabbRobot'
      }
	  
	   post {
        always {
          script {
            step(
              [
                $class              : 'RobotPublisher',
                outputPath          : 'Results',
                outputFileName      : '**/output.xml',
                reportFileName      : '**/report.html',
                logFileName         : '**/log.html',
                disableArchiveOutput : false,
                passThreshold       : 50,
                unstableThreshold   : 40,
                otherFiles          : "**/*.png,**/*.jpg",
              ]
            )
          }
	        }
		}
     
}
}
}