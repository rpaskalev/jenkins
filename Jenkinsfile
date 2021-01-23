
peline {
    agent any

    stages {
        stage('Build') {
            steps {
		sh '''
	              ./jenkins/build/mvn.sh mvn -B -DskipTests clean package
		      ./jenkins/build/build.sh
		   '''
           }
        }
        stage('Test') {
            steps {
                sh './jenkins/test/mvn.sh mvn test '
            }
        }
        stage('push') {
            steps {
                sh './jenkins/pushImage/push.sh'
            }
        }
        stage('Deploy') {
            steps {
                sh './jenkins/deploy/deploy.sh'
            }
        }
    }
}
