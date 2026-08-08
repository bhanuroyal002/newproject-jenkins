def call() {
    echo "Building application with Maven..."

    sh 'mvn clean package -DskipTests'
}