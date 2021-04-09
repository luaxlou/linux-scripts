## 清理docker



### 清理镜像

`docker image prune`



### 清理未被容器使用的镜像

```
docker image prune -a
```





### 清理未被使用的Volume

```
docker volume prune
```



### 清理未被使用的network

```
docker network prune
```





### 清理所有

```
$ docker system prune

WARNING! This will remove:
        - all stopped containers
        - all networks not used by at least one container
        - all volumes not used by at least one container
        - all dangling images
        - all build cache
Are you sure you want to continue? [y/N] y
```





### 清理日志



```
#!/bin/bash

rm $(docker inspect $1 | grep -G '"LogPath": "*"' | sed -e 's/.*"LogPath": "//g' | sed -e 's/",//g');
```