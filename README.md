## How to build

+ `docker build -t nico:jupyter .`

## How to run

+ `docker run -d -p 80:8080 -e JUPYTER_PASSWORD=<your_password_here> nico:jupyter`

NOTE: If not specified, the password will be 'password'
