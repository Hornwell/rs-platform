namespace :run  do
  docker-machine start default
  eval $(docker-machine env)
  docker-compose build
  docker-compose up --build
  curl -I http://echo $DOCKER_HOST:3000
end