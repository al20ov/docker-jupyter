# docker-jupyter

## How to build

`docker build -t nico:jupyter .`

NOTE: `start.sh` is of no use for actually building the image, it is used by the image for starting and hashing the password.

## How to run

```
docker run -d \
  -p 80:8080 \
  -e JUPYTER_PASSWORD=<your_password_here> \
  --name="jupyter-notebook" \
  nico:jupyter
```

NOTE: If not specified, the password will be 'password'.

If you want, you can add a volume mount to persist your notebook files.
