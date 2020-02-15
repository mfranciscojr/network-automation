#!/bin/bash
curl -s -b /tmp/cookie -c /tmp/cookie -X POST -d '{"username":"admin","password":"admin123"}' http://127.0.0.1/api/auth/login