#!/usr/bin/env bash

mysqldump --no-tablespaces -u test -ptest hercules_database > /dump/hercules_database.sql
