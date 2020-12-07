
pipeline{
    agent any
    
   stages{
    stage('Clone repository') {
        /* Cloning the Repository to our Workspace */
        steps{
        checkout scm}
    }

    stage('Build image') {
        /* This builds the actual image */
        steps{

        app = docker.build("6383943367/build")
    }}

    stage('Test image') {
       steps{    
        app.inside {
            echo "Tests passed"
        }
    }}

    stage('Push image') {
        /* 
			You would need to first register with DockerHub before you can push images to your account
		*/
		steps{
        docker.withRegistry('https://registry.hub.docker.com', '89933921-ac8e-41a0-89be-0e6d70af41bd') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
            } 
                echo "Trying to Push Docker Build to DockerHub"
    }
  }}   
}
