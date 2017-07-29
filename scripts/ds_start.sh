#/bin/bash
# `source` this file to properly export JUPYTER_CONTAINER
DS_CONTAINER=`docker run -d -p 8888:8888 -p 8080:8080 -v $PWD:/home/jovyan/work jupyter/datascience-notebook start-notebook.sh --NotebookApp.token=""`
export DS_CONTAINER
echo "Jupyter notebook server is running at http://localhost:8888"
echo "To stop the server, run \`docker stop \$DS_CONTAINER\`"
