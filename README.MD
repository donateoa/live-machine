# Deploy Docker Container to AWS

This application use sparkJava to handle a simple Rest api returning 'Hello Word'.

## Build
Build jar with dependencies

    mvn clean compile assembly:single
Build the Docker image (change your-repository with your own repository)

    docker build -t live-machine .

## Run and test locallly
Once the image is built, start it with:

    docker run -d -p 4567:4567 live-machine
test it with:

    curl localhost:4567

## Deploy to AWS
After the build completes, tag your image so you can push the image to this repository:

    docker tag live-machine:latest 299940762763.dkr.ecr.eu-south-1.amazonaws.com/live-machine:latest

Run the following command to push this image to your newly created AWS repository:

    docker push 299940762763.dkr.ecr.eu-south-1.amazonaws.com/live-machine:latest

