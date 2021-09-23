#!/bin/bash
psql postgresql://postgres:lusm123@localhost:5432/main -f $1
