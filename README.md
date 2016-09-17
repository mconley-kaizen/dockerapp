# dockerapp
Build a docker application with specific model package

## Installation
```bash
git clone https://github.com/mconley-kaizen/docker_app.git
cd docker_app
docker build -t mydockerapp .
```

## Usage
### Check docker image
`docker images`

### Run Docker
`docker run -it --name iris_prediction --rm -p 5000:5000 mydockerapp`
