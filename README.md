# 🐋 Develop Vue.js quasar applications with Docker

This repostory is used for setup, dev and deploy project vue that use  framework quasar

## Setup Project
1. Make sure you have Docker installed
2. Build the image you need to set up our initial project structure

```bash
docker build \
  --build-arg USER_ID=$(id -u) \
  --build-arg GROUP_ID=$(id -g) \
  -t vue_helper - < ./dockerfiles/Setup.Dockerfile
```
3. We make container from image that build before
> Make sure the replace /path/to/project/ with your own project path.
```bash
docker run -v /path/to/project/:/vue-setup -it vue_helper
```
4. Create the quasar project on terminal that open from inside the container, add npm modules, if necessary
```bash
user@b24a617a1dfa:/vue-setup$ yarn create quasar
```
### Dev container
1. Build the development container by running
```bash
docker build  \
    -f ./dockerfiles/Dev.Dockerfile \
    -t vue_app:dev 
    vue_app
```
2. Launch the development container by executing the following command
```bash
docker run \
    -v /path/to/project/vue_app:/vue_app \
    -p 8080:8080
    -it vue_app:dev
```

> :memo: This repo inspired from blog https://dev.to/tqbit/a-step-by-step-guide-to-developing-and-deploying-vue-apps-with-docker-part-two-1djg 

thanks Tobias 