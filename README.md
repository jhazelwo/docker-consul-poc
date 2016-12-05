# Consul cluster PCO in Docker
Run a master consul server and join 3 members to it.
## start
    ./Build
    ./Cluster
## check
    docker logs consul00
## cleanup
    docker rm -f $(docker ps -a|grep jhazelwo/consul-poc|awk '{print $1}')
