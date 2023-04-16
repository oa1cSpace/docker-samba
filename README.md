## samba in docker

create samba image:

```sh
docker build . -t samba
```

eddit smb.conf & docker-compose.yml files

run docker-compose in detuch mode:

```sh
docker-compose run -d
```
