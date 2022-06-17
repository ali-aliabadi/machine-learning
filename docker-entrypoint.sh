#!/usr/bin/env bash

echo "Starting Gunicorn..."
exec gunicorn base.wsgi:application -c gunicorn.py
