#! /bin/bash

clear
cleos wallet unlock --password PW5KckN6qBwj2vJDJsXtyup9jyBptAZT4pm1Lmmkfqb4pSM4Jk1rJ

# 계정 이름
account="producer2"

# 계정 생성
cleos push action eosio.token transfer '["eosio",'$account',"1000.0000 HEP","dd"]' -p eosio





exit 0;
