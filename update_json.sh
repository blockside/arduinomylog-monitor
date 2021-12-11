#!/bin/bash
#list of API ENDPOINTS: https://api.monitor3.jungletestnet.io/#apiendpoints
#open the above URL and insert the endpoint from the from the proposed list
curl https://[API_ENDOPONT_IP:_PORT_HERE]/v1/chain/get_table_rows -sX POST -d '{"scope":"arduinomylog", "code":"arduinomylog", "table":"logs", "limit":"1", "reverse":"true", "json": "true"}' | json_pp > temp_humi.json 2>&1 &
sleep 10
exit 0
