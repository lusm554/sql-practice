#!/bin/bash

docker-compose -f docker-compose.yml -p sql-tasks up -d --build
