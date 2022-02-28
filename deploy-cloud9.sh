# Instrucciones para despliegue sin contenerizacion

# Instrucciones de depliegue de hasher
gem install sinatra

sudo tee -a /etc/hosts 0<<FINAL
#hasher
127.0.0.1 hasher
FINAL

ruby ./hasher/hasher.rb &

# Instrucciones depliegue redis
sudo yum install -y redis
