#!/usr/bin/env bash

java -jar sqlworkbench.jar -configDir=sqlworkbench/ -profileStorage=sqlworkbench/sqlworkbench.properties -profile=blog -script=sqlworkbench/import-csv.sql
