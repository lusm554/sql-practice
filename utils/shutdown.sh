#!/bin/bash
docker-compose -p sql-tasks down
rm -rf pgdata
docker volume prune --force

