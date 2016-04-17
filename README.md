# Hornwell website

## Docker
On OSX, you need to start a custom docker "host"

    docker-machine start default
    eval $(docker-machine env)
    docker build -t hornwell-website .
    docker run --name dev-hornwell-website -d hornwell-website
    docker run --name dev-hornwell-website -p 8080:3000 -d hornwell-website

docker run --rm -v "$PWD":/usr/src/app -w /usr/src/app ruby:2.1 bundle install

docker run -it --rm --user "$(id -u):$(id -g)" -v "$PWD":/usr/src/app -w /usr/src/app rails rails new --skip-bundle webapp
