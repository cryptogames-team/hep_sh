#! /bin/bash

rm -r ~/test.contracts/eosio.contracts/contracts/eosio.token
rm -r ~/test.contracts/eosio.contracts/contracts/eosio.system

cp -r ~/test.contracts/telos.contracts/contracts/eosio.token ~/test.contracts/eosio.contracts/contracts
cp -r ~/test.contracts/telos.contracts/contracts/eosio.system ~/test.contracts/eosio.contracts/contracts

cd ~/test.contracts/eosio.contracts/contracts/eosio.system/src/

exit 0;
