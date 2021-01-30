# Setting up

This document contains instructions for setting up Docker for this course.
Note that the rest of this directory includes every `Dockerfile` for the projects.
You are free to browse them and build them yourself, but we will always provide built images on the GitHub repository.

## Install Docker

If you run windows:
1. Install WSL2: <https://docs.microsoft.com/en-us/windows/wsl/install-win10>
1. Install Docker: <https://docs.docker.com/docker-for-windows/install-windows-home/#install-docker-desktop-on-windows-10-home>

If you run linux, install docker using your OS package manager.

To test, open up a command-prompt/terminal and run `docker run -d -p 80:80 docker/getting-started`.
If it does not work, make sure Docker is running.

Note that if you run a laptop on battery, you might want to exit Docker once you are finished with it.
On windows, right-click the docker icon in the system tray and click the quit option.
On linux, eh?

## Auth GitHub

Make sure you have a GitHub account.
If you do not, make one.
These next steps create a GitHub API token to be used with Docker so you can pull our class images.
They are derived from <https://docs.github.com/en/github/authenticating-to-github/creating-a-personal-access-token>.

1. ensure you have a github account
1. open github
1. click your profile drop-down
1. click settings
1. click developer settings
1. click personal access tokens
1. click generate new token
1. give your token a name, then click the checkbox next to "read:packages"
   * **note that you can apply other permissions, but at the very least you need "read:packages"**
1. click generate token
1. when the page loads, copy the provided value
   * note that you will never be able to see this value on github again, so copy it down if you want (but keep it in a secure place)
1. open up a terminal, type `docker login https://docker.pkg.github.com -u YOUR-GITHUB-USERNAME` and paste that token as the password when docker prompts for a password
   * replace `YOUR-GITHUB-USERNAME` with your actual github username

## Test it out

1. open up a command-prompt/terminal to a directory you might store your code in
1. run our base image
   * windows: `docker run -it --rm -v "%cd%":/src docker.pkg.github.com/plstic/cmsc389b-spring21/base:latest`
   * linux: `docker run -it --rm -v $PWD:/src docker.pkg.github.com/plstic/cmsc389b-spring21/base:latest`
   * you should now be inside a container based on our base image
1. run `cd src && touch test.txt`
1. ensure that a new `test.txt` file is visible _on your host OS_ (in that directory you went into in step 1)
1. if you want, try out python `echo "print('Hello World')" | python3`

## End

If you have successfully completed this, then you are ready to go for this course.
We intend to have a Docker image associated with each course project.
These images will be published on the course GitHub repository, and will be accessible in the exact same way as we have accessed the base image above.
Each project will also include run scripts for ease of access.
