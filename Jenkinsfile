pipeline {
	agent any
	stages {
		stage ('build') {
			steps { 
			echo "build stage"
			sh '''
			set -ex
			bash jenranfile.bash testfile
			'''
			
			
			
			
			}
			
		}
		stage ('upload to s3'){
		steps {
		withAWS(region:'us-east-1', credentials:'yogeshaws') {
        s3Upload(bucket:"yogesh-jenkinstest", path:'jenkinsupload', includePathPattern:'**/testfile*')
              }
}
		} 
		stage ('test: integration-&-quality') {
			steps { echo "testing stage"}
		}
		
	}
}