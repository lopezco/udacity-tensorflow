# Assignments for Udacity Deep Learning class with TensorFlow

Course information can be found at https://www.udacity.com/course/deep-learning--ud730

# Docker

Use the docker image [lopezco/docker-tensorflow](https://hub.docker.com/r/lopezco/docker-tensorflow/) or build it from [source](https://github.com/lopezco/docker-tensorflow.git)

**Get files**

```bash
# Get docker files
git clone https://github.com/lopezco/docker-tensorflow.git
cd docker-tensorflow

# Get notebooks
git clone https://github.com/lopezco/udacity-tensorflow.git notebooks
```

**Build or pull the image**

```bash
# Build or pull image (select one)
sudo docker-compose [build or pull]
```

**Run the container**
```bash
sudo docker-compose up -d
```

Look at this [README](https://github.com/lopezco/docker-tensorflow/blob/master/README.md) file for more information on how to parametrize the docker-compose file.
