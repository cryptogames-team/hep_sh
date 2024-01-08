#! /bin/bash

pk_p1="EOS6ZCVepgiW1MtJicmSMv8AQRytiyzBYboFe2PpVstsmv9qjSD9s"
pk_p2="EOS7yd54hpzRjNB72KenfG1p17nxoW4Na6HoCJupbiQv1HK6K6q7Y"
pk_p3="EOS7SNLf2hqDae6jjUsPLDLxsqyyHbFq2TDKMZfNaf8WhgrPeuLE7"
pk_p4="EOS5UsiV4NxcwKoEGvKeGWo592m6S7QYf5jq6HAmP2G2faUnH71Ya"
pk_p5="EOS8k5aK9ih7hLFgToaiEhHWeyFqRkv1FwJMAx5C5bdJZLPde2MDn"
pk_p6="EOS7dfSoumGfShAPWgUnxYQgneFi3sszuQ4MXjWe2upti2ZZoCYow"
pk_p7="EOS5SZ8wxnjDouL5aa7M48bKxqTj826TPX7DLGWfyduYh5LwD1NU7"
pk_p8="EOS6DNvT9MjySCqwhFCxRLAgtcBT8rES3QYukoS52pKLDrF2jzzGm"
pk_p9="EOS7p6fsnsXs48oqJwQBDUuEve2DRmynPH4YZPED9K8XDWfFkUUB2"
pk_p10="EOS54zZJvrSHHocEboL3RFiQB3XpwbuxJA4gBZw5o9SALEvetb8re"
pk_p11="EOS6S8VErQrJmkMLgbCVGJpKygDG562RTQ8o8RqedBiLSyh3Mj6bg"
pk_p12="EOS63dgcuoARqDMiDq9v8ktMmBr89usZKyu974MaFntYhJuLaqLZ9"
pk_p13="EOS7qnzroPJzo2qdC1VV15GpfYy3t4U483dzud4cG1USsmkaT3e2L"
pk_p14="EOS5nXQaZrMV7wWFd8wb1fYpATWiaFc37v47crSFVtTowtGCf9mPq"
pk_p15="EOS8HmkNr79uJr9gf2wStEatFwcvFykNBfvwAYwF2ZBhXf6gTXbfS"
pk_p16="EOS8Jn5A5qPX9D8BoB17GWva1wvYfrWzASgRD81cbmoh5mpRiZTqk"
pk_p17="EOS8WJFLhucaeWhFGxX8L5hRaq3vJEm2kLJAztoEMcdGQujpxz5iW"
pk_p18="EOS6PMwb1mCPbBQcUEbPrKzCy6Th6ybUoHgzbrZggTWMrudrGwCTi"
pk_p19="EOS5BQ6yUeb7enn1vpdrC5xKoJmvaruvhrJEfaBdji6wvrbXPCyMb"
pk_p20="EOS6cLudtPX4k7ntjuZkZRdm8nMJXhyPsRanLU6WvM2joCPALG1yT"
pk_p21="EOS8H1AnzHekz6GvsAuN812WPDYdABa1ByA2iCY6cKehprrNXBfnG"
pk_p22="EOS8dKLK3z3GihcmHCTbTuH7ayt4gLxqEVzv4W2aFsVf9dyX5vGFX"

dir_p1="/root/biosboot/producer1"
dir_p2="/root/biosboot/producer2"
dir_p3="/root/biosboot/producer3"
dir_p4="/root/biosboot/producer4"
dir_p5="/root/biosboot/producer5"
dir_p6="/root/biosboot/producer6"
dir_p7="/root/biosboot/producer7"
dir_p8="/root/biosboot/producer8"
dir_p9="/root/biosboot/producer9"
dir_p10="/root/biosboot/producer10"
dir_p11="/root/biosboot/producer11"
dir_p12="/root/biosboot/producer12"
dir_p13="/root/biosboot/producer13"
dir_p14="/root/biosboot/producer14"
dir_p15="/root/biosboot/producer15"
dir_p16="/root/biosboot/producer16"
dir_p17="/root/biosboot/producer17"
dir_p18="/root/biosboot/producer18"
dir_p19="/root/biosboot/producer19"
dir_p20="/root/biosboot/producer20"
dir_p21="/root/biosboot/producer21"
dir_p22="/root/biosboot/producer22"
dir_p23="/root/biosboot/producer23"
dir_p24="/root/biosboot/producer24"
dir_p25="/root/biosboot/producer25"



clear

echo -e "\n 1. system 컨트랙트 제출. \n"



echo -e "\n 2. 멀티노드 만들기, 액션 제출 \n"
cleos push action eosio setpriv '["eosio.msig", 1]' -p eosio@active

cleos push action eosio init '["0", "4,HEP"]' -p eosio@active


echo -e "\n 3. 프로듀서 등록 \n"
cleos system newaccount eosio --transfer producer1 ${pk_p1} --stake-net "10.0000 HEP" --stake-cpu "10.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producer1 ${pk_p1} https://levan.dev/producer1

cleos system newaccount eosio --transfer producer2 ${pk_p2} --stake-net "10.0000 HEP" --stake-cpu "10.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producer2 ${pk_p2} https://levan.dev/producer2

cleos system newaccount eosio --transfer producer3 ${pk_p3} --stake-net "10.0000 HEP" --stake-cpu "10.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producer3 ${pk_p3} https://levan.dev/producer3

cleos system newaccount eosio --transfer producer4 ${pk_p4} --stake-net "10.0000 HEP" --stake-cpu "10.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producer4 ${pk_p4} https://levan.dev/producer4

cleos system newaccount eosio --transfer producer5 ${pk_p5} --stake-net "10.0000 HEP" --stake-cpu "10.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producer5 ${pk_p5} https://levan.dev/producer5

cleos system newaccount eosio --transfer producersix ${pk_p6} --stake-net "10.0000 HEP" --stake-cpu "10.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producersix ${pk_p6} https://levan.dev/producer6

cleos system newaccount eosio --transfer producersev ${pk_p7} --stake-net "10.0000 HEP" --stake-cpu "10.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producersev ${pk_p7} https://levan.dev/producer7

cleos system newaccount eosio --transfer producereig ${pk_p8} --stake-net "10.0000 HEP" --stake-cpu "10.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producereig ${pk_p8} https://levan.dev/producer8

cleos system newaccount eosio --transfer producernin ${pk_p9} --stake-net "10.0000 HEP" --stake-cpu "10.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producernin ${pk_p9} https://levan.dev/producer9

cleos system newaccount eosio --transfer producerten ${pk_p10} --stake-net "10.0000 HEP" --stake-cpu "10.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producerten ${pk_p10} https://levan.dev/producer10

cleos system newaccount eosio --transfer producer11 ${pk_p11} --stake-net "10.0000 HEP" --stake-cpu "10.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producer11 ${pk_p11} https://levan.dev/producer11

cleos system newaccount eosio --transfer producertwl ${pk_p12} --stake-net "10.0000 HEP" --stake-cpu "10.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producertwl ${pk_p12} https://levan.dev/producer12

cleos system newaccount eosio --transfer producer13 ${pk_p13} --stake-net "10.0000 HEP" --stake-cpu "10.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producer13 ${pk_p13} https://levan.dev/producer13

cleos system newaccount eosio --transfer producer14 ${pk_p14} --stake-net "10.0000 HEP" --stake-cpu "10.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producer14 ${pk_p14} https://levan.dev/producer14

cleos system newaccount eosio --transfer producer15 ${pk_p15} --stake-net "10.0000 HEP" --stake-cpu "10.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producer15 ${pk_p15} https://levan.dev/producer15

cleos system newaccount eosio --transfer producersixt ${pk_p16} --stake-net "10.0000 HEP" --stake-cpu "10.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producersixt ${pk_p16} https://levan.dev/producer16

cleos system newaccount eosio --transfer producersevt ${pk_p17} --stake-net "100.0000 HEP" --stake-cpu "100.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producersevt ${pk_p17} https://levan.dev/producer17

cleos system newaccount eosio --transfer producereigt ${pk_p18} --stake-net "1000.0000 HEP" --stake-cpu "1000.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producereigt ${pk_p18} https://levan.dev/producer18

cleos system newaccount eosio --transfer producernint ${pk_p19} --stake-net "1000.0000 HEP" --stake-cpu "1000.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producernint ${pk_p19} https://levan.dev/producer19

cleos system newaccount eosio --transfer producertwt ${pk_p20} --stake-net "1000.0000 HEP" --stake-cpu "1000.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producertwt ${pk_p20} https://levan.dev/producer20

cleos system newaccount eosio --transfer producer21 ${pk_p21} --stake-net "1000.0000 HEP" --stake-cpu "1000.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producer21 ${pk_p21} https://levan.dev/producer21

cleos system newaccount eosio --transfer producer22 ${pk_p22} --stake-net "1000.0000 HEP" --stake-cpu "1000.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producer22 ${pk_p22} https://levan.dev/producer22

cleos system newaccount eosio --transfer producer23 ${pk_p20} --stake-net "1000.0000 HEP" --stake-cpu "1000.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producer23 ${pk_p20} https://levan.dev/producer23

cleos system newaccount eosio --transfer producer24 ${pk_p20} --stake-net "1000.0000 HEP" --stake-cpu "1000.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producer24 ${pk_p20} https://levan.dev/producer24

cleos system newaccount eosio --transfer producer25 ${pk_p20} --stake-net "1000.0000 HEP" --stake-cpu "1000.0000 HEP" --buy-ram-kbytes 3192
cleos system regproducer producer25 ${pk_p20} https://levan.dev/producer25

#echo -e "\n 4. 프로듀서 실행(genesis_start) \n"
#cd $dir_p1
#bash ${dir_p1}/genesis_start.sh

#cd $dir_p2
#bash ${dir_p2}/genesis_start.sh


echo -e "\n 5. 프로듀서 투표. \n"
cleos system voteproducer prods producer1 producer1 producer2 producer3 producer4 producer5 producersix producersev producereig producernin producerten producer11 producertwl producer13 producer14 producer15 producersixt producersevt producereigt producernint producertwt producer21 producer22 producer23 producer24 producer25

cleos system voteproducer prods producer2 producer1 producer2 producer3 producer4 producer5 producersix producersev producereig producernin producerten producer11 producertwl producer13 producer14 producer15 producersixt producersevt producereigt producernint producertwt producer21


cleos system listproducers


echo -e "\n 6. 권한 변경. \n"

cleos push action eosio updateauth '{"account": "eosio.bpay", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.bpay@owner
cleos push action eosio updateauth '{"account": "eosio.bpay", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.bpay@active

cleos push action eosio updateauth '{"account": "eosio.msig", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.msig@owner
cleos push action eosio updateauth '{"account": "eosio.msig", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.msig@active

cleos push action eosio updateauth '{"account": "eosio.names", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.names@owner
cleos push action eosio updateauth '{"account": "eosio.names", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.names@active

cleos push action eosio updateauth '{"account": "eosio.ram", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.ram@owner
cleos push action eosio updateauth '{"account": "eosio.ram", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.ram@active

cleos push action eosio updateauth '{"account": "eosio.ramfee", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.ramfee@owner
cleos push action eosio updateauth '{"account": "eosio.ramfee", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.ramfee@active

cleos push action eosio updateauth '{"account": "eosio.saving", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.saving@owner
cleos push action eosio updateauth '{"account": "eosio.saving", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.saving@active

cleos push action eosio updateauth '{"account": "eosio.stake", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.stake@owner
cleos push action eosio updateauth '{"account": "eosio.stake", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.stake@active

cleos push action eosio updateauth '{"account": "eosio.token", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.token@owner
cleos push action eosio updateauth '{"account": "eosio.token", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.token@active

cleos push action eosio updateauth '{"account": "eosio.vpay", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.vpay@owner
cleos push action eosio updateauth '{"account": "eosio.vpay", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.vpay@active

cleos push action eosio updateauth '{"account": "eosio.item", "permission": "owner", "parent": "", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.item@owner
cleos push action eosio updateauth '{"account": "eosio.item", "permission": "active", "parent": "owner", "auth": {"threshold": 1, "keys": [], "waits": [], "accounts": [{"weight": 1, "permission": {"actor": "eosio", "permission": "active"}}]}}' -p eosio.item@active

echo -e "\n 7. nft 컨트랙트 추가. \n"

cd ~/test.contracts/atomic
cleos set contract eosio.nft atomicassets

cleos set account permission eosio.nft active --add-code -p eosio.nft@owner
cleos push action eosio.nft init '[]' -p eosio.nft


echo -e "\n 8. 마켓 컨트랙트 추가. \n"

cd ~/test.contracts/nftmarket
cleos set contract eosio.market market

cleos set account permission eosio.market active --add-code -p eosio.market@owner
cleos push action eosio.market init '[]' -p eosio.market


echo -e "\n 8. 아이템 오아시스 컨트랙트 추가. \n"

cd ~/test.contracts/item-oasis
cleos set contract eosio.item item_oasis

cleos set account permission eosio.item active --add-code -p eosio.item@owner
cleos push action eosio.item init '[]' -p eosio.item

exit 0;

