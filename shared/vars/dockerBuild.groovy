def call(String imageName, String tag) {

    echo "Building Docker image..."

    sh "docker build -t ${imageName}:${tag} ."
}