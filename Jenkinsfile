pipeline { 

    environment { 

        registry = "shubhamdev2001/jenkins-demo" 

        registryCredential = 'DOCKERHUB' 

        dockerImage = '' 

    }

    agent {

        label "kk"

    }

    stages { 

         stage('Checkout') {
            steps {
                // Checkout the Git repository
                checkout scm
            }
        }


        stage('Building our image') { 

            steps { 

                script { 

                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 

                }

            } 

        }

        stage('Deploying image') { 

            steps { 

                script { 

                    docker.withRegistry( '', registryCredential ) { 

                        dockerImage.push() 

                    }

                } 

            }

        }

 

        stage('Running Container') {

          steps {

            script {

              sh "docker run -d -p 3002:80 ${registry}" + ":$BUILD_NUMBER" 

    }

}

        }

    }

}
