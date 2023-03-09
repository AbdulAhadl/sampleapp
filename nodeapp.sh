#!/bin/bash
sed "s/TagVersion/$1/g" pod.yml > node-app.yml