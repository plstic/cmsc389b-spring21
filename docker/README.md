# how to run

Step 0: make sure you have docker installed.

## prelim

github token:
1. ensure you have a github account
1. open github
1. click your profile drop-down
1. click settings
1. click developer settings
1. click personal access tokens
1. click generate new token
1. give your token a name, then click the checkbox next to "read:packages"
   * note that you can apply other permissions, but at the very least you need "read:packages"
1. click generate token
1. when the page loads, copy the provided value
   * note that you will never be able to see this value on github again, so copy it down if you want (but keep it in a secure place)
1. open up a terminal, type `docker login https://docker.pkg.github.com -u YOUR-GITHUB-USERNAME` and paste that token as the password when docker prompts for a password
   * replace `YOUR-GITHUB-USERNAME` with your actual github username

file sharing:
1. open docker desktop (if applicable)
1. click RESOURCES
1. click FILE SHARING
1. add your computer's root directory
   * windows: "C:\"
   * linux: "/" (if applicable)

## running

main:
1. create a `/src` folder on your host OS -- put your code in there
1. run the image
   * windows: `docker run -it --rm -v "%cd%"\src:/src docker.pkg.github.com/plstic/cmsc389b-spring21/base:latest`
   * linux: `docker run -it --rm -v $PWD/src:/src docker.pkg.github.com/plstic/cmsc389b-spring21/base:latest`
1. `cd src && touch test.txt`
1. ensure that a new `test.txt` file was created _on your host OS_
1. try out python 
   * windows: `echo "print('Hello, World!')" | python3`
   * linux: `python3 -c 'print("Hello, World!")`
