git clone https://github.com/ele-igle/dockercoins-1.git
cd dockercoins-1/
docker network create hasher
docker network create redis
docker network create rng
docker build -t ruby:sinatra-thin ./hasher/
docker run -d --rm --name hasher --network hasher --entrypoint ruby -u nobody -v $PWD/hasher/hasher.rb:/hasher.rb ruby:sinatra-thin hasher.rb
docker ps
docker logs hasher
docker top hasher
docker run -d --rm --name redis --network redis --entrypoint docker-entrypoint.sh -u redis -v redis-data:/data/ redis:latest redis-server
docker ps
docker logs redis
docker top redis
docker build -t python:Flask ./rng/
docker run -d --rm --name rng --network rng --entrypoint python -u nobody -v $PWD/rng/rng.py:/rng.py python:Flask rng.py
docker ps
docker logs rng
docker top rng
