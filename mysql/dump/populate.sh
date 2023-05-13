#!/usr/bin/env bash

mysql -u test -ptest -h localhost hercules_database < /dump/hercules_database.sql
