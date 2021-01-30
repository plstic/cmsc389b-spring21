# Docker

## Installation

See [here](../docker/README.md).

## Usage

We endorse docker because we can make sure that all the correct and same 
packages are installed for you and make sure that all the compilers and tools 
used in this calss work. No need to worry about which version of rust you need
to install as docker should do that all for you. However, we will provide the
version number of each compiler we will be using which you can then check on 
your system. If you have any questions or need help feel free to contact us.

So docker acts like a VM, sorta kinda. There is just no X-server, which is fine
as we won't need one for this class. We will be using the arch linux OS as the 
basis of ouor contianer. We need to build our OS so that is has all the toold 
and compilers you need for this class. This is all defined in the `Dockerfile` 
in the docker folder. You do not need to worry about it, you just need to run 
the build script (`build.run` for unix users and `build.bat` for windows users).

Once the image is built, you can then run it using the run script (`run.sh for
unix systems and `run.bat` for windows users). if you `ls` once the container is
running (the instance of the image you just built), you should see anything that
was in the src folder in the docker directory. This is the shared folder between
your local machine and the docker container. YOu can change what the shared 
folder is by adding a path to a folder you want to be shared as a command line
argument to the run script.

For more details, see the our Docker Panopto video for a tutorial on how
it all works.
