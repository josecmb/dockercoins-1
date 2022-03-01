    9  git clone https://github.com/ele-igle/dockercoins-1.git
   10  cd dockercoins-1/
   11  docker network create hasher
   12  docker network create redis
   13  docker network create rng
   23  docker build -t ruby:sinatra-thin ./hasher/
    docker run -d --rm --name hasher --network hasher --entrypoint ruby -u nobody -v $PWD/hasher/hasher.rb:/hasher.rb ruby:sinatra-thin hasher.rb
   26  docker ps
   27  docker logs hasher
   28  docker top hasher
   docker run -d --rm --name redis --network redis --entrypoint docker-entrypoint.sh -u redis -v redis-data:/data/ redis:latest redis-server
   31  docker ps
   32  docker logs redis
   33  docker top redis
   docker build -t python:Flask ./rng/
docker run -d --rm --name rng --network rng --entrypoint python -u nobody -v $PWD/rng/rng.py:/rng.py python:Flask rng.py
   41  docker ps
   docker logs rng
   44  docker top rng
