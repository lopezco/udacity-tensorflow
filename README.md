# Assignments for Udacity Deep Learning class with TensorFlow

Course information can be found at https://www.udacity.com/course/deep-learning--ud730

## Running the Docker container from the Dockerhub image

```bash
docker run -p 8888:8888 -p 6006:6006 --name udacity-tensorflow -it lopezco/udacity-tensorflow
```

Note that if you ever exit the container, you can return to it using:

```bash
docker start -ai udacity-tensorflow
```

### Environment Variables

You can set some environment variables while running the container using the ```--env``` parameter as follows:

```
--env JUPYTER_PASSWORD="my_password" --env JUPYTER_PORT=8888 --env TENSORBOARD_LOGDIR="./logs" --env TENSORBOARD_PORT=6006
```

### Accessing the Notebooks

* Jupyter: http://localhost:8888
* Tensorboard: http://localhost:6006


## Running the Docker container with docker-compose

Install docker-compose following [this](https://docs.docker.com/compose/install/) guide.
Then, download [this](https://github.com/lopezco/udacity-tensorflow/blob/master/docker-compose.yml) docker-compose file.

```bash
docker-compose up [-d]
```

This command will pull the image from docker-hub and automatically run the container. The parameter ```-d``` is optional (run in detached mode)

Note that if you ever stop the container, you can restart it using:

```bash
docker-compose up [-d]
```

### Environment Variables
You can set some environment variables in the docker-compose file to control the container:

```
environment:
  JUPYTER_PASSWORD: "my_password"
  JUPYTER_PORT: 8899
  TENSORBOARD_LOGDIR: ./logs
  TENSORBOARD_PORT: 8008
```

### Accessing the Notebooks

* Jupyter: http://localhost:8899
* Tensorboard: http://localhost:8008


## History of base image

**Base image:** gcr.io/tensorflow/tensorflow:latest

* 0.1.0: Initial release.
* 0.2.0: Many fixes, including lower memory footprint and support for Python 3.
* 0.3.0: Use 0.7.1 release.
* 0.4.0: Move notMMNIST data for Google Cloud.
* 0.5.0: Actually use 0.7.1 release.
* 0.6.0: Update to TF 0.10.0, add libjpeg (for Pillow).
* 1.0.0: Update to TF 1.0.0 release.
* 1.1.0: Update to TF 1.3.0 release.
