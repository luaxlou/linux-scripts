### Registry安装



https://docs.docker.com/registry/deploying/



```shell
mkdir auth
docker run \
  --entrypoint htpasswd \
  registry:2 -Bbn username password > auth/htpasswd
```

```shell
registry:
  restart: always
  image: registry:2
  ports:
    - 5000:5000
  environment:
    REGISTRY_AUTH: htpasswd
    REGISTRY_AUTH_HTPASSWD_PATH: /auth/htpasswd
    REGISTRY_AUTH_HTPASSWD_REALM: Registry Realm
  volumes:
    - /path/data:/var/lib/registry
    - /path/auth:/auth
```



