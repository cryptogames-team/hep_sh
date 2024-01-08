  GNU nano 4.8                                                                                                    clean_all.sh                                                                                                               
#! /bin/bash


dir=~/test.contracts

cd "$dir"

rm -r eosio.contracts
git clone https://github.com/EOSIO/eosio.contracts.git 



exit 0;
