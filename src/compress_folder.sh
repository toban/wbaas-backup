#!/bin/bash
set -e

tar -czf - ./* | openssl enc -pass "pass:$BACKUP_KEY" -e -aes256 -out "$1"