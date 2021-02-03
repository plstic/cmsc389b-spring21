@echo off
REM setlocal enabledelayedexpansion
REM echo *** Starting vm
set vol=%1
if [%vol%] == [] (
    set vol=src
)
set vol="%cd%"\%vol%
REM echo *** Remember to "exit" the terminal instead of closing the window
docker run -it --rm -v %vol%:/src cmsc389b-base
REM echo *** Finished -- make sure the vm was stopped/deleted
pause

REM this runs a container using the built image
REM if you want to use the pre-built image:
REM docker run -it --rm -v %vol%:/src docker.pkg.github.com/plstic/cmsc389b-spring21/base
