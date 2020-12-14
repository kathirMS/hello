
pipeline {
   agent any 
    stages {
     stage{
      steps {
         def app = docker.build("6383943367/build1")
         
            docker.withRegistry('https://registry.hub.docker.com', '89933921-ac8e-41a0-89be-0e6d70af41bd') {
              app.push("${env.BUILD_NUMBER}")
              app.push("latest")
            } 
                echo "Trying to Push Docker Build to DockerHub"
        
      }
      }
    }
    
}
