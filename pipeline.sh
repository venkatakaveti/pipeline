pipeline {
	agent any 

	stages {
		stage('complie stage') {

			steps {
			withMaven(maven : 'maven_3_5_0') {
				sh 'mvn clean complie'
			}
		}
	}
          stage('Testing stage') {

                steps {
                    withMaven(maven : 'maven_3_5_0') {
                        sh 'mvn test'
			}
		}
	}
	   stage('Deployment stage') {

                steps {
                    withMaven(maven : 'maven_3_5_0') {
                        sh 'mvn deploy'
                        }
                    }
                }
          }
       }
