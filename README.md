A Docker based development environment for doing frontend development with Golang using GopherJS.

# Usage

To use, navigate to the `docker/dev` directory.

On many systems, you will likely do this with the command:
```
cd docker/dev
```

Then run the build script.

On many systems, you will likely do this with:
```
sudo ./build.sh
```

(On Linux based systems, docker has to run as root. So `sudo` is needed.
I *think* on Mac the `sudo` part is not needed though.)

After that has come up, it will **eventually** present you with a message of what to do next.

The message it will **eventually** show you will look something like this:
```
###########################################################################

To get into this Golang docker container, (in another terminal window)
run the command:

    sudo docker exec -it gopherjs-dev /bin/bash

And then, once you are in the container, run something like:

    cd /app/project && gopherjs test

---------------------------------------------------------------------------

You could press [CTRL]+[C] to stop this container from running...

[Thu, 01 Sep 2016 00:21:20 +0000] and all's well.
```

**Follow the instructions in the message you see like that.**

**Especially the part about opening a new terminal window, for the next steps.**
