```
docker build -t dockerimages/docker-build-s6 https://github.com/dockerimages/docker-build-s6.git
docker run --rm -v `pwd`/dist:/dist dockerimages/docker-build-s6
```
