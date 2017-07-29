Some Jupyter / Pandas notebooks I'm playing around with. To use, first install
(Docker)[https://docs.docker.com/engine/installation/] on your machine.

To start a `datascience` environment, run `$ source scripts/ds_start.sh`
This comes with `R`, `Python`, and `Julia` kernels, all with "batteries included",
with the exception of `TensorFlow`.  This will serve the notebooks at `http://localhost:8888`

To start a `tensorflow` environment, run `$ source scripts/tf_start.sh`. This starts
TensorFlow and TensorBoard. This will serve the notebooks at `http://localhost:8889`.

You can run both simulataneously, and they will share the working directory. It's
not a good idea to open the same notebook in both simulataneously, but you can
pass data around over disk.

Once you are done, you can use `docker stop $DS_CONTAINER` or `docker stop $TF_CONTAINER` to stop the docker process.
