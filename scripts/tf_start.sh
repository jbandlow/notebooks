#/bin/bash
# `source` this file to properly export TENSORFLOW_CONTAINER
LOGDIR=/tmp/tensorflow_logs
TENSORFLOW_CONTAINER=`docker run -d -p 8888:8888 -p 6006:6006 -v $PWD:/home/jovyan/work jupyter/tensorflow-notebook start-notebook.sh --NotebookApp.token=''`
docker exec -d $TENSORFLOW_CONTAINER tensorboard --logdir=$LOGDIR
export TENSORFLOW_CONTAINER
echo "Tensorflow notebook server is running at http://localhost:8888"
echo "Tensorboard is running from docker directory $LOGDIR at http://localhost:6006"
echo "To stop the server, run \`docker stop \$TENSORFLOW_CONTAINER\`"
