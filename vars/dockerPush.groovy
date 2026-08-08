def call(String imageName, String tag) {

    echo "Pushing Docker image..."

    withDockerRegistry(credentialsId: 'dockerhub') {

        sh "docker push ${imageName}:${tag}"
    }
}