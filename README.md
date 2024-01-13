ArduinoMyLog-Monitor
====================

## Project ArduinoMyLog-Monitor

This project will monitor blockchain data using ipfs protocol. It refers to the previous work present under repository ArduinoMyLog2, allowing you to monitor the data of temperature and humidity using IPFS (InterPlanetary File System) protocol.


## Quick links and licensing references

- [IPFS is a protocol and peer-to-peer network for storing and sharing data in a distributed file system.](https://ipfs.tech)
- [Antelope is an open framework for building next-generation web3 products and services](https://github.com/AntelopeIO)
- [Proton Blockchain is a fast scalable, layer one blockchain](https://xprnetwork.org)


## Notice
This software is experimental and a work in progress. Data inserted using ipfs will be accessible to anyone.
Under no circumstances should these files be used in relation to any critical system(s).
Use of these files is at your own risk.
THE SOFTWARE IS PROVIDED "AS IS". See license file LICENSE.md for details.

## Quick start

* We assume that the previous project "ArduinoMyLog2" was followed correctly, and that your IPFS daemon is running. Check it:

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

* You can verify it:

wget https://gateway.ipfs.io/ipfs/[YOUR_CID_HERE]

Important note: if you stop your ipfs daemon, your json file will probably no longer be accessible. You can use an ipfs dns to keep the json file updated into a webpage despite your repeated uploads.


* Finally check an example here:

wget https://bafkreidh7un4mki5z6qkx4txmfzel52machdar2mxfhradf5noabperqae.ipfs.4everland.io

or using an IPFS client

ipfs get bafkreidh7un4mki5z6qkx4txmfzel52machdar2mxfhradf5noabperqae

or with web browser Brave:

[ipfs://bafkreidh7un4mki5z6qkx4txmfzel52machdar2mxfhradf5noabperqae](ipfs://bafkreidh7un4mki5z6qkx4txmfzel52machdar2mxfhradf5noabperqae)
