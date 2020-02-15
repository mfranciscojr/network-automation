#!/bin/bash
curl -s -b /tmp/cookie -c /tmp/cookie -X POST -d '{"username":"admin","password":"admin123"}' http://127.0.0.1/api/auth/login
sleep 3
curl -s -c /tmp/cookie -b /tmp/cookie -X GET -H 'Content-type: application/json' http://127.0.0.1/api/labs/INE_CCIE/INE_CCIE.unl/nodes/wipe
sleep 3
curl -s -c /tmp/cookie -b /tmp/cookie -X GET -H 'Content-type: application/json' http://127.0.0.1/api/labs/INE_CCIE/INE_CCIE.unl/nodes/start
curl -s -c /tmp/cookie -b /tmp/cookie -X GET -H 'Content-type: application/json' http://127.0.0.1/api/auth/logout