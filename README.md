ArduinoMyLog-Monitor
====================

## Project ArduinoMyLog-Monitor

This project will monitor blockchain data into distribuited web. It refers to the previous work present under repository ArduinoMyLog (fetch data from the blockchain), allowing you to monitor the results using IPFS (InterPlanetary File System) protocol and also on a Web page that updates automatically every hour.


## Quick links and licensing references

- [IPFS is a protocol and peer-to-peer network for storing and sharing data in a distributed file system.](https://ipfs.io)
- [EOSIO is a next-generation, open-source blockchain protocol with industry-leading transaction speed and flexible utility.](https://github.com/EOSIO)
- [EOS Jungle3.0 Testnet is blockchain based on EOSIO, developed and maintained by an excellent group of developers.](https://jungletestnet.io)



## Notice
This software is experimental and a work in progress. Data inserted using ipfs will be accessible to anyone.
Under no circumstances should these files be used in relation to any critical system(s).
Use of these files is at your own risk.
THE SOFTWARE IS PROVIDED "AS IS". See license file LICENSE.md for details.

## Quick start

* We assume that the previous project "ArduinoMyLog" was followed correctly, and that your IPFS daemon is running. Check it:

$ ipfs --version

OUTPUT:

ipfs version 0.10.0

* Fetch the data from blockchain to local Json:

$ cd ~/arduinomylog-monitor

$ chmod 750 update_json.sh

$ ./update_json.sh

* Add Json to IPFS:

$ ./put_json.sh

* Get the CID and verify that it works:

$ cat CID_put.log

OUTPUT:

added [YOUR_CID_HERE] temp_humi.json

$ ipfs cat [YOUR_CID_HERE]

* You can verify it also using curl:

https://gateway.ipfs.io/ipfs/[YOUR_CID_HERE]

Important note: if you stop your ipfs daemon, your json file will probably no longer be accessible. You can use an ipfs dns to keep the json file updated despite your repeated uploads.


* Finally you can fetch with javascript the Json and include it in a web page like this:

wget https://gateway.ipfs.io/ipfs/bafybeihjagcm6lk3uuflbqhsm6z37qmfvwxegcprbqr5m7vvhz7zl53uee
