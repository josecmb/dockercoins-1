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
