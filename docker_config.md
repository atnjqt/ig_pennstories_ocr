## example setup for docker comment getter:

``` bash
docker run -d -p 4444:4444 -v --shm-mem=4G selenium/standalone-chrome
# you can rename this container

docker rename _whatever_random_docker_name_is_ selenium-chrome
```


