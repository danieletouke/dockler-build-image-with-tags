def MY_REGION='eu-west-1'
pipeline {
    agent any

    stages {
        stage('Cloning') {
            steps {
                echo 'Cloning...'
                git branch: 'main', url: 'https://github.com/danieletouke/dockler-build-image-with-tags.git'   
            }
        }
        stage('Checking') {
            steps {
                echo 'Checking for yaml file...'
                sh 'source 2check_for_yaml_file_get_aws_region.sh'
            }
        }
        stage('Building') {
            steps {
                echo 'building an image....'
                sh 'source build_docker_image.sh'
            }
        }
        stage('Pushing') {
            steps {
                echo 'pushing an image....'
                sh 'source push_docker_image.sh'
            }
        }  
    }
}