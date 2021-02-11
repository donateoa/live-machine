# Deploy Docker Container to AWS

This application use sparkJava to handle a simple Rest api returning 'Hello Word'.

## Build
Build jar with dependencies

    mvn clean compile assembly:single
Build the Docker image (change your-repository with your own repository)

    docker build -t your-repository/live-machine .

## Run 
Once the image is built, start it with:

    docker run -d -p 4567:4567 your-repository/live-machine

## Test
test it with:

    curl localhost:4567