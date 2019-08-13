pipeline {
	agent any
	stages {
		stage ('build') {
			steps { 
			echo "build stage"
			sh "bash jenranfile.bash testfile" 
			
			
			
			
			}
		}
		stage ('test: integration-&-quality') {
			steps { echo "testing stage"}
		}
		
	}
}