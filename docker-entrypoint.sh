#!/bin/bash
set -e

bundle install
exec "$@"
