pipeline {
    agent any
    environment { 

    repo_name="danieletouk3"
    image_name="app"
    num="number"
    version="version"


    }
    stages {
        stage('Cloning') {
            steps {
                echo 'Cloning...'
                git branch: 'main', url: 'https://github.com/danieletouke/dockler-build-image-with-tags.git'   
            }
        }
        stage('Building') {
            steps {
                echo 'building an image....'
                sh 'pwd'
                sh 'ls'
                sh './build_docker_image.sh'
            }
        }
        stage('Pushing') {
            steps {
                echo 'pushing an image....'
                sh './push_docker_image.sh'
            }
        }  
    }
}