# How to run?

```
sudo docker run --rm -it panguolin/ubuntu
```

# How to run a docker as non-root user?

## add `username` into docker group
```
sudo groupadd docker
sudo gpasswd -a <username> docker
```

## (re)login as `username`, check if ok
```
docker ps
```
## another available solution for everyone
```
sudo chmod 666 /var/run/docker.sock 
```
