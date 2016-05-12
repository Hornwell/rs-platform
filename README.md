# Hornwell website

## Docker

## Initial setup

Install Docker and Docker-compose tools. Follow docker documentation

On OSX, you'll need to start the virtual Linux environment:

    docker-machine start default
    eval $(docker-machine env)

TIP: Think about putting `eval $(docker-machine env)` in your `~/.bashrc` our `~/.zshrc` file
TIP: You need to restart this machine when you switch network, and of course, refresh your env

## Project setup

    docker-compose down # If instance already exists
    docker-compose build # Build instance according to the configuration
    docker-compose up *****OR****** docker-compose up --build # start services 
    echo $DOCKER_HOST # to get your IP
    curl -I http://YOUR-IP:3000 # instead of localhost:3000
    ***********************
    || In a new terminal ||
    ***********************
    docker-compose run web bundle exec rake db:create db:migrate # Create and migrate database

## Updating docker configuration

When you're updating docker configuration (Dockerfile or docker-compose.yml), you'll need to rebuild your docker images this way with this command: `docker-compose build`
