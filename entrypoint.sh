#!/bin/bash

# Launch tensorboard
tensorboard --logdir ./logs --host 0.0.0.0 --port 6006 &

# Launch jupyter
/run_jupyter.sh --allow-root

exec $@
