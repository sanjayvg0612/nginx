pipeline
{
  agent any
  stages
  {
    stage('Build')
    {
      steps
      {
         // checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'GitHubP', url: 'https://github.com/sanjayvg0612/nginxjenkins.git']])
          sh 'docker build -t gsanjay06/dockerjenkins:nginx1.0 .'
      }
    }
    stage('Docker Push') {
      steps {
            withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockernginx')]) {
          sh 'docker login -u gsanjay06 -p ${dockernginx}'
          sh 'docker push gsanjay06/dockerjenkins:nginx1.0'
        }
      }
    }
    stage('Docker deploy') {
      steps {
          withCredentials([string(credentialsId: 'dockerhubpwd', variable: 'dockernginx')]) {         
          sh 'docker login -u gsanjay06 -p  ${dockernginx}'
           sh 'docker image rm -f gsanjay06/dockerjenkins:nginx1.0'
          sh 'docker pull gsanjay06/dockerjenkins:nginx1.0'
          sh 'docker run -d -p 8090:80 gsanjay06/dockerjenkins:nginx1.0'
        }
      }
    }
  }
}
