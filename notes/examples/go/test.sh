#!/bin/bash

ab -n 20000 -c 200 "127.0.0.1:8000/put?name=test&val=1"

# this script is an artifact from us wanting to test you on Go
