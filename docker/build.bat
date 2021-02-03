@echo off
REM echo *** Building base image
docker build --tag cmsc389b-base .
REM echo *** Finished
pause

REM note that you can also reference the base image from our online repository
REM if you do not want to build it
