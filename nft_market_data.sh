#! /bin/bash

clear
cleos wallet unlock --password PW5KckN6qBwj2vJDJsXtyup9jyBptAZT4pm1Lmmkfqb4pSM4Jk1rJ

# 계정 이름
account="test4"
account_pub_key="EOS4u334NerrVD7zRaG4FvnQWoSqYUAW1nfJmvkYMMG7r6NrXKkFG"

# 계정 생성
#cleos create account eosio $account $account_pub_key

# 돈 보내기
# cleos push action eosio.token transfer '["eosio",$account,"1000.0000 HEP","dd"]' -p eosio
# cleos push action eosio.token transfer '["eosio","test4","1000.0000 HEP","dd"]' -p eosio

# cpu, nft 스테이킹

# ram 구매


# 컬렉션 생성
echo -e "\n 1. 컬렉션 생성."

cleos push action eosio.nft createcol '['$account', "cryptoguynft", true, [], [], 0.00, 
    [
    {"key": "display_name","value": ["string", "crypto guys의 nft"]},
    {"key": "collection_description","value": ["string", "crypto guys의 플레이를 위한 nft 입니다."]},
    {"key": "url","value": ["string", "http://cryptoexplorer.store/"]},
    {"key": "img_logo","value": ["string", "QmVeQW8tSyzHpDiygRJ54rj5kEGAEfNyRQvkbkwAZ4gjqq"] },
    {"key": "img_background","value": ["string", "QmdrhpCxv8ho42RKycsPjTEoPanraQwj6XnD75dzzEUaUb"] }
    ]]' -p $account

# 컬렉션 권한 추가
echo -e "\n 1. 컬렉션 권한 추가."
cleos push action eosio.nft addcolauth '["cryptoguynft", '$account']' -p $account


echo -e "\n 1.1 크립토팜 컬렉션 생성."

cleos push action eosio.nft createcol '['$account', "cryptofarmss", true, [], [], 0.00, 
    [
    {"key": "display_name","value": ["string", "crypto guys의 nft"]},
    {"key": "collection_description","value": ["string", "crypto farms의 플레이를 위한 nft 입니다."]},
    {"key": "url","value": ["string", "http://cryptoexplorer.store/"]},
    {"key": "img_logo","value": ["string", "QmVeQW8tSyzHpDiygRJ54rj5kEGAEfNyRQvkbkwAZ4gjqq"] },
    {"key": "img_background","value": ["string", "QmdrhpCxv8ho42RKycsPjTEoPanraQwj6XnD75dzzEUaUb"] }
    ]]' -p $account

# 컬렉션 권한 추가
echo -e "\n 1. 컬렉션 권한 추가."
cleos push action eosio.nft addcolauth '["cryptofarmss", '$account']' -p $account



# 스키마 생성
echo -e "\n 2. 스키마 생성."

cleos push action eosio.nft createschema '['$account', "cryptoguynft", "bodies", [{"name":"name", "type":"string"}, {"name":"img", "type":"string"}, {"name":"rarity", "type":"string"}]]' -p $account
cleos push action eosio.nft createschema '['$account', "cryptoguynft", "bodypart", [{"name":"name", "type":"string"}, {"name":"img", "type":"string"}, {"name":"rarity", "type":"string"}]]' -p $account
cleos push action eosio.nft createschema '['$account', "cryptoguynft", "eyes", [{"name":"name", "type":"string"}, {"name":"img", "type":"string"}, {"name":"rarity", "type":"string"}]]' -p $account
cleos push action eosio.nft createschema '['$account', "cryptoguynft", "gloves", [{"name":"name", "type":"string"}, {"name":"img", "type":"string"}, {"name":"rarity", "type":"string"}]]' -p $account
cleos push action eosio.nft createschema '['$account', "cryptoguynft", "headparts", [{"name":"name", "type":"string"}, {"name":"img", "type":"string"}, {"name":"rarity", "type":"string"}]]' -p $account
cleos push action eosio.nft createschema '['$account', "cryptoguynft", "mouth", [{"name":"name", "type":"string"}, {"name":"img", "type":"string"}, {"name":"rarity", "type":"string"}]]' -p $account
cleos push action eosio.nft createschema '['$account', "cryptoguynft", "tails", [{"name":"name", "type":"string"}, {"name":"img", "type":"string"}, {"name":"rarity", "type":"string"}]]' -p $account

echo -e "\n 2. 스키마 생성(cryptofarms)."
cleos push action eosio.nft createschema '['$account', "cryptofarmss", "character", [{"name":"name", "type":"string"}, {"name":"img", "type":"string"}, {"name":"hair", "type":"string"}]]' -p $account


# 템플릿 생성
echo -e "\n 3. 템플릿 생성."

cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "bodies", true, true, 100,[ {"key": "name","value": ["string", "yellow body"]},{"key": "img","value": ["string", "QmQTHBEA6gYsemkcMNxnBkvNx49Jfk5kKvVhrgMEPKQmDn"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account 
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "bodies", true, true, 100,[ {"key": "name","value": ["string", "blue body"]},{"key": "img","value": ["string", "QmR6W9mzkPAU3jg7hAVJYhFX8b3xe5S3csi44f9zut7R7D"]},{"key": "rarity","value": ["string", "rare"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "bodies", true, true, 100,[ {"key": "name","value": ["string", "orange body"]},{"key": "img","value": ["string", "QmRD4QSFHMx35R9v4HCKnLj4MAM21Yz5VkJ6xcwm8CJhRQ"]},{"key": "rarity","value": ["string", "rare"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "bodies", true, true, 100,[ {"key": "name","value": ["string", "pink body"]},{"key": "img","value": ["string", "QmTYCFPrkTJLJiiztwYwArfuQVQe7wpTrS4aLKfSbNgWsz"]},{"key": "rarity","value": ["string", "legendary"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "bodies", true, true, 100,[ {"key": "name","value": ["string", "puple body"]},{"key": "img","value": ["string", "QmfJX4DSoVCAnXFD2uMDbY5y2nogdrR4hURi1UqtjRwncy"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "bodies", true, true, 100,[ {"key": "name","value": ["string", "green body"]},{"key": "img","value": ["string", "QmNPjQZCzh3utVgtjSMjqnXBVMWCQke6fcauTNxY8fnTKY"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "bodypart", true, true, 100,[ {"key": "name","value": ["string", "blue mask"]},{"key": "img","value": ["string", "QmexuD6bZqG3XCpXjbMNvuX3hdtGAjDZkrgPmaUZSFJY1h"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account 
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "bodypart", true, true, 100,[ {"key": "name","value": ["string", "red ribon"]},{"key": "img","value": ["string", "QmSfrvAWNVLkwRHKkeg546ZTCKvzW4C9ueQNsMzEUzm8px"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "bodypart", true, true, 100,[ {"key": "name","value": ["string", "pink belt"]},{"key": "img","value": ["string", "QmNojDuUmsYnhDfZPdE7rS4U6skBEvzfjYzmx1yYA6auBm"]},{"key": "rarity","value": ["string", "rare"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "bodypart", true, true, 100,[ {"key": "name","value": ["string", "green tie"]},{"key": "img","value": ["string", "QmRPGR27s1L5VcBxV6LM3ZrYAZNBsLsoDPFhGvbNC5ao82"]},{"key": "rarity","value": ["string", "legendary"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "bodypart", true, true, 100,[ {"key": "name","value": ["string", "star belt"]},{"key": "img","value": ["string", "QmXbHXA9SuMw6u6bwnzP2szcsHsJ4CYNwK4hBxqftA6D7g"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "bodypart", true, true, 100,[ {"key": "name","value": ["string", "V belt"]},{"key": "img","value": ["string", "QmbhHkm6rwvvkP4hDg2kebQhM1MsF4KnXuBXD6zWW7EyCf"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "bodypart", true, true, 100,[ {"key": "name","value": ["string", "skeleton belt"]},{"key": "img","value": ["string", "QmaEA3XknGi6z8dQN1zGCMY8VN1BrUTrvtpGvHe5rPQ9co"]},{"key": "rarity","value": ["string", "rare"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "bodypart", true, true, 100,[ {"key": "name","value": ["string", "rainbow belt"]},{"key": "img","value": ["string", "QmaxNzhunm4Edzc6vqt5HJofTqvSaXwVN8qhknTecfZRtd"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "bodypart", true, true, 100,[ {"key": "name","value": ["string", "heart belt"]},{"key": "img","value": ["string", "QmR99ZfKz9SeSbZ9xBePK4xSkj7Ftp7Ei3HNHRjUBr75Z7"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "bodypart", true, true, 100,[ {"key": "name","value": ["string", "skeleton necklace"]},{"key": "img","value": ["string", "QmYWQJuHR6wekfThq7Dj6qQefGBJsgxuVaLM6gsxwxCbKe"]},{"key": "rarity","value": ["string", "legendary"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "eyes", true, true, 100,[{"key": "name","value": ["string", "nomal eyes"]},{"key": "img","value": ["string", "QmQ3Mr25iS6rL1n79qr927xY4MeTcPkcCXAVCrgfASetDb"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account 
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "eyes", true, true, 100,[{"key": "name","value": ["string", "angry eyes"]},{"key": "img","value": ["string", "QmQdKcTPJZmi5f3AiXx8vYxyfctvHZ85ZQFqHrmUjQxb2z"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "eyes", true, true, 100,[{"key": "name","value": ["string", "triangle eyes"]},{"key": "img","value": ["string", "QmXyveZRJgJ7KeKtwMH6j7xg7FZAXXM4ESKT6p8XNDmdiN"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account 
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "eyes", true, true, 100,[{"key": "name","value": ["string", "minions eyes"]},{"key": "img","value": ["string", "QmeG4CHnMWd83tcJ7wobQ4bFNXWcS2SJ3dpeXV6X8onpc9"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "eyes", true, true, 100,[{"key": "name","value": ["string", "X eyes"]},{"key": "img","value": ["string", "QmV66vbDcai58KpeAdCjmr56eJFBqP6SZTFRW5DiWcUawx"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "eyes", true, true, 100,[{"key": "name","value": ["string", "heart eyes"]},{"key": "img","value": ["string", "QmdTmD7t8nZpocFaQBuWMDpTRUPd5cgSgUfiTmHvqQQwJ7"]},{"key": "rarity","value": ["string", "legendary"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "eyes", true, true, 100,[{"key": "name","value": ["string", "big eyes"]},{"key": "img","value": ["string", "QmNV6xK1NgWjaVzFRenRSbgAAvk3xo7X3V1EN3MU7bVL5J"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "eyes", true, true, 100,[{"key": "name","value": ["string", "deadpool eyes"]},{"key": "img","value": ["string", "QmX31i5aK7RSSxHR311oyhjzMVMdE6J8cXvsGrYGATh86D"]},{"key": "rarity","value": ["string", "rare"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "eyes", true, true, 100,[{"key": "name","value": ["string", "white eyes"]},{"key": "img","value": ["string", "QmNNiaLjMYLUY9ogVtAUArd7Gi64iQXTW4SmDZRQBxbZLL"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "eyes", true, true, 100,[{"key": "name","value": ["string", "very big eyes"]},{"key": "img","value": ["string", "QmST3A7CTGGkz7f8AEUP5Jm7RMmNC1wZY7X6FYhxeQXVKa"]},{"key": "rarity","value": ["string", "legendary"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "eyes", true, true, 100,[{"key": "name","value": ["string", "mask"]},{"key": "img","value": ["string", "QmfVF313rLcdKaLMLbPMNt5hgrbUPZJJPGV21yqvRhgNCg"]},{"key": "rarity","value": ["string", "rare"]}]]' -p $account


cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "gloves", true, true, 100,[{"key": "name","value": ["string", "red gloves"]},{"key": "img","value": ["string", "QmbQfbVY8NnvN3JEoRGa9s5ndzB6vZUhUFy25LJUCWXb1A"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "gloves", true, true, 100,[{"key": "name","value": ["string", "gundam gloves"]},{"key": "img","value": ["string", "QmUdEgCV9c9zD1bF5pYLx4AfDfd76YBkmqty6nCnsGL2Pz"]},{"key": "rarity","value": ["string", "rare"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "gloves", true, true, 100,[{"key": "name","value": ["string", "skeleton gloves"]},{"key": "img","value": ["string", "QmdPJn2KNtmpgHUgVckUrP8aoJh1VZ41Xgu42N6CcG1NWR"]},{"key": "rarity","value": ["string", "legendary"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "gloves", true, true, 100,[{"key": "name","value": ["string", "cactus gloves"]},{"key": "img","value": ["string", "QmUbubi7QsYibekbFKTXXJU8DsQVJ3f73JaZPhX2L1LtsE"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "gloves", true, true, 100,[{"key": "name","value": ["string", "heart gloves"]},{"key": "img","value": ["string", "QmWWBjF23a8BSHX9BT8irbwvNYPQPYUByxVEoTS7stn6Kq"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "gloves", true, true, 100,[{"key": "name","value": ["string", "drill gloves"]},{"key": "img","value": ["string", "QmPpxRXvmarw5j72Dhyc7hRYfVGnDp62Cw7HkxthKScZGL"]},{"key": "rarity","value": ["string", "rare"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "gloves", true, true, 100,[{"key": "name","value": ["string", "sawtooth gloves"]},{"key": "img","value": ["string", "QmTPVqwFFxPifxUtV6UyMRx4Zm453s4H8R76NeMJu5Vn4K"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "gloves", true, true, 100,[{"key": "name","value": ["string", "shark gloves"]},{"key": "img","value": ["string", "QmecGfc7Qc7ZTC2stE3VLJyeKXd2yBCdwKnCfZFHX4K31R"]},{"key": "rarity","value": ["string", "legendary"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "gloves", true, true, 100,[{"key": "name","value": ["string", "stone gloves"]},{"key": "img","value": ["string", "QmNypEvn3VCRfNQ4RjEPWYxymVEPdUk5LfvcMiuRgXNWkh"]},{"key": "rarity","value": ["string", "legendary"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "gloves", true, true, 100,[{"key": "name","value": ["string", "bear gloves"]},{"key": "img","value": ["string", "Qme6QFJFm33tddQKuWb1YHKqihGgVFN7D1ZDrCZn8uFvz8"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account

cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "headparts", true, true, 100,[{"key": "name","value": ["string", "dog ears"]},{"key": "img","value": ["string", "QmbnvW2iJqeKkTCrZFNnDH6AwNUxWa7mJdaPvEsbqeX5Rx"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account

cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "headparts", true, true, 100,[{"key": "name","value": ["string", "pink head"]},{"key": "img","value": ["string", "QmUcpShmfRWRDsn9Yj1PKFJ1vvs7WtNjNFC5HG5fey1iv5"]},{"key": "rarity","value": ["string", "rare"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "headparts", true, true, 100,[{"key": "name","value": ["string", "yellow head"]},{"key": "img","value": ["string", "QmXcuWJYmGTuiUGZKZk65qCnv4JGBuX5qUZTJCqFaXQgHK"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "headparts", true, true, 100,[{"key": "name","value": ["string", "knight head"]},{"key": "img","value": ["string", "QmZL6eakPSHzAqctepfYF5e6BK844MxwkbPHzdp1fXtB2A"]},{"key": "rarity","value": ["string", "legendary"]}]]' -p $account

# ====================mouth====================

cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "mouth", true, true, 100,[{"key": "name","value": ["string", "smile mouth"]},{"key": "img","value": ["string", "Qmc7KdkHn9dGmBgxL7bJ9hV8Q7K8YP1swrgXVAqUdkEuDW"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "mouth", true, true, 100,[{"key": "name","value": ["string", "sad mouth"]},{"key": "img","value": ["string", "QmWB5JXb2eim4rzfbBqUHjZhByK6VfSFVpvTG9QfiDundC"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "mouth", true, true, 100,[{"key": "name","value": ["string", "sad tooth mouth"]},{"key": "img","value": ["string", "QmVTjkebaWb1uEFuh8fRTfx5VjCL8kpvznexQBePBaLWoZ"]},{"key": "rarity","value": ["string", "rare"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "mouth", true, true, 100,[{"key": "name","value": ["string", "tooth monster mouth"]},{"key": "img","value": ["string", "QmbiZgo3w8vD6WUiiHbL38ykF1eE5m4pZSdr38h1BR5qQE"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "mouth", true, true, 100,[{"key": "name","value": ["string", "chicken mouth"]},{"key": "img","value": ["string", "QmXxRZXG7B1NXXyxFbMLiHD9iVtZLbfPmrJoHUr2CBzHfk"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "mouth", true, true, 100,[{"key": "name","value": ["string", "sharp tooth mouth"]},{"key": "img","value": ["string", "QmV7XUnxemzfWe8ynP1Q9Ta9hpEv7R7F4EEDRxYXjwRJCM"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "mouth", true, true, 100,[{"key": "name","value": ["string", "bear mouth"]},{"key": "img","value": ["string", "QmTqxpAfpE2GXXFUeMk3NrvBdRxzyd2g8Zho16YqZ1MUau"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "mouth", true, true, 100,[{"key": "name","value": ["string", "smile tooth mouth"]},{"key": "img","value": ["string", "QmWT9bDc5R4GcsS4SqGwRzcsBECfqaWyQek6oUFaGsCVHW"]},{"key": "rarity","value": ["string", "rare"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "mouth", true, true, 100,[{"key": "name","value": ["string", "seal mouth"]},{"key": "img","value": ["string", "QmVwe3Jmg4fiAJUMkm6Enckx68i8tLggwjsFUoXHeQuG1w"]},{"key": "rarity","value": ["string", "legendary"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "mouth", true, true, 100,[{"key": "name","value": ["string", "knight mouth"]},{"key": "img","value": ["string", "QmP9BMJGTo8wdVvjRyHrKs8tPDoJ6DHxsFSbKztiqmj81q"]},{"key": "rarity","value": ["string", "legendary"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "mouth", true, true, 100,[{"key": "name","value": ["string", "long mouth"]},{"key": "img","value": ["string", "QmZmBQokfAVrqEmAuM37uGz2oCHKJs719ApEgiJpMCdg9L"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "mouth", true, true, 100,[{"key": "name","value": ["string", "pig mouth"]},{"key": "img","value": ["string", "QmPtPBrqnSToNA7S95YXeay5gLjFtzhdgPiS1eD6Kg7ugV"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "tails", true, true, 100,[{"key": "name","value": ["string", "tail"]},{"key": "img","value": ["string", "QmZocswGsefary7zoBrmcVE7HEWwHA7DdpxZDhUEx9MHHn"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "tails", true, true, 100,[{"key": "name","value": ["string", "dino tail"]},{"key": "img","value": ["string", "QmZ6rdXYDB3HEw8DwNpEx4u4MaTivH2W4enNdUu4EpSxPe"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "tails", true, true, 100,[{"key": "name","value": ["string", "ball tail"]},{"key": "img","value": ["string", "QmR2wYTo1LYsEWaxLSGyPMVQNdyfy5oRE6mqGagxJp3Yxd"]},{"key": "rarity","value": ["string", "rare"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "tails", true, true, 100,[{"key": "name","value": ["string", "marshmallow tail"]},{"key": "img","value": ["string", "QmXkNNYVZfAt87Z6Vmiqf7XcaGeJc2yHSo2t17YqdyGgbs"]},{"key": "rarity","value": ["string", "rare"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "tails", true, true, 100,[{"key": "name","value": ["string", "raccoon tail"]},{"key": "img","value": ["string", "QmbrA4wgykrAxroF5c7VAFjj94GunanWJP2rMYaxNJBQLw"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "tails", true, true, 100,[{"key": "name","value": ["string", "sharp ball tail"]},{"key": "img","value": ["string", "Qmf76QWo4mSWZFVyDLcDA6TMAzHQNSnA5k52Lw3e7rgDsa"]},{"key": "rarity","value": ["string", "legendary"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "tails", true, true, 100,[{"key": "name","value": ["string", "shark tail"]},{"key": "img","value": ["string", "QmW89b5ZyyDhDUqnevfyBwDD6FX57d4n33V8MsDGTXnWEr"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptoguynft", "tails", true, true, 100,[{"key": "name","value": ["string", "blue tail"]},{"key": "img","value": ["string", "QmbzZn5Fr2AbpohvqsFHJYNDwAipWbCS9B3ZhRLoVjFERB"]},{"key": "rarity","value": ["string", "common"]}]]' -p $account

echo -e "\n 3. 템플릿 생성.(크립토팜)"
cleos push action eosio.nft createtempl '['$account', "cryptofarmss", "character", true, true, 100,[{"key": "name","value": ["string", "base"]},{"key": "img","value": ["string", "QmT6aPsZmfry5c2LgtFDD4Xs4564PT2pe5uX1EM7pKuu91"]},{"key": "hair","value": ["string", "1"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptofarmss", "character", true, true, 100,[{"key": "name","value": ["string", "long hair"]},{"key": "img","value": ["string", "QmZnzMPP3BtzX9sBMwAvqPcRyygfBvN4xvB9WerHYzUsuh"]},{"key": "hair","value": ["string", "2"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptofarmss", "character", true, true, 100,[{"key": "name","value": ["string", "curly"]},{"key": "img","value": ["string", "QmdcLpXiqMTTU8UX1486DoHewTVyGULKM3WKCt3iFNLd96"]},{"key": "hair","value": ["string", "3"]}]]' -p $account
cleos push action eosio.nft createtempl '['$account', "cryptofarmss", "character", true, true, 100,[{"key": "name","value": ["string", "bow"]},{"key": "img","value": ["string", "QmY3Jdz4Jk1ND54yYvU3X8yc1NxcQUmovuqbzJXErp1AcG"]},{"key": "hair","value": ["string", "4"]}]]' -p $account


# nft 발행
echo -e "\n 4. nft 발행."

cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "bodies", 1, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "bodies", 2, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "bodies", 3, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "bodies", 4, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "bodies", 5, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "bodies", 6, '$account', [],[],[]]' -p $account

cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "bodypart", 7, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "bodypart", 8, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "bodypart", 9, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "bodypart", 10, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "bodypart", 11, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "bodypart", 12, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "bodypart", 13, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "bodypart", 14, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "bodypart", 15, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "bodypart", 16, '$account', [],[],[]]' -p $account

cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "eyes", 17, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "eyes", 18, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "eyes", 19, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "eyes", 20, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "eyes", 21, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "eyes", 22, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "eyes", 23, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "eyes", 24, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "eyes", 25, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "eyes", 26, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "eyes", 27, '$account', [],[],[]]' -p $account

cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "gloves", 28, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "gloves", 29, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "gloves", 30, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "gloves", 31, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "gloves", 32, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "gloves", 33, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "gloves", 34, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "gloves", 35, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "gloves", 36, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "gloves", 37, '$account', [],[],[]]' -p $account

cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "headparts", 38, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "headparts", 39, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "headparts", 40, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "headparts", 41, '$account', [],[],[]]' -p $account

cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "mouth", 42, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "mouth", 43, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "mouth", 44, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "mouth", 45, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "mouth", 46, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "mouth", 47, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "mouth", 48, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "mouth", 49, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "mouth", 50, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "mouth", 51, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "mouth", 52, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "mouth", 53, '$account', [],[],[]]' -p $account

cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "tails", 54, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "tails", 55, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "tails", 56, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "tails", 57, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "tails", 58, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "tails", 59, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "tails", 60, '$account', [],[],[]]' -p $account
cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "tails", 61, '$account', [],[],[]]' -p $account



# 마켓 등록 로직
echo -e "\n 5. 마켓에 데이터 등록."
asset_id=1099511627776
price=5

# 마켓에 올릴 물품의 asset_id
asset_id=$((asset_id+61))


#bodies의 asset name. 번호는 1~6
bodies_asset_name=("yellowbody bluebody" "orangebody" "pinkbody" "puplebody" "greenbody")
#bodypart의 asset name. 번호는 7~16
bodypart_asset_name=("bluemask" "redribon" "pinkbelt" "greentie" "starbelt" "Vblet" "skeletonbelt" "rainbowbelt" "heartbelt" "skeletonnecklace")
#eyes의 asset name. 번호는 17~27
eyes_asset_name=("nomaleyes" "angryeyes" "triangleeyes" "minionseyes" "Xeyes" "hearteyes" "bigeyes" "deadpooleyes" "whiteeyes" "verybigeyes" "mask")
#gloves의 asset name. 번호는 28~37
gloves_asset_name=("redgloves" "gundamgloves" "skeletongloves" "cactusgloves" "heartgloves" "drillgloves" "sawtoothgloves" "sharkgloves" "stonegloves" "beargloves")
#headparts의 asset name. 번호는 38~41
headparts_asset_name=("dogears" "pinkhead" "yellowhead" "knighthead")
#mouth의 asset name. 번호는 42~53
mouth_asset_name=("smilemouth" "sadmouth" "sadtoothmouth" "toothmonstermouth" "chickenmouth" "sharptoothmouth" "bearmouth" "smiletoothmouth" "sealmouth" "knightmouth" "longmouth" "pigmouth")
#tails의 asset name. 번호는 54~61
tails_asset_name=("tail" "dinotail" "balltail" "marshmallowtail" "raccoontail" "sharpballtail" "sharktail" "bluetail")


#bodies 발행
# asset_index_bodies=1
# for asset_name in "${bodies_asset_name[@]}"
#     do
#         cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "bodies", '$asset_index_bodies', '$account', [],[],[]]' -p $account
#         $asset_index_bodies=$((asset_index_bodies+1))
#     done

#bodypart 발행
# asset_index_bodypart=7
# for asset_name in "${bodypart_asset_name[@]}"
#     do
#         cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "bodypart", '$asset_index_bodypart', '$account', [],[],[]]' -p $account
#         $asset_index_bodypart=$((asset_index_bodypart+1))
#     done

#eyes 발행
# asset_index_eyes=17
# for asset_name in "${eyes_asset_name[@]}"
#     do
#         cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "eyes", '$asset_index_eyes', '$account', [],[],[]]' -p $account
#         $asset_index_eyes=$((asset_index_eyes+1))
#     done

#gloves 발행
# asset_index_gloves=28
# for asset_name in "${gloves_asset_name[@]}"
#     do
#         cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "gloves", '$asset_index_gloves', '$account', [],[],[]]' -p $account
#         $asset_index_gloves=$((asset_index_gloves+1))
#     done

#headparts 발행
# asset_index_headparts=38
# for asset_name in "${headparts_asset_name[@]}"
#     do
#         cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "headparts", '$asset_index_headparts', '$account', [],[],[]]' -p $account
#         $asset_index_headparts=$((asset_index_headparts+1))
#     done

#mouth 발행
# asset_index_mouth=42
# for asset_name in "${mouth_asset_name[@]}"
#     do
#         cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "mouth", '$asset_index_mouth', '$account', [],[],[]]' -p $account
#         $asset_index_mouth=$((asset_index_mouth+1))
#     done

#tails 발행
# asset_index_tails=54
# for asset_name in "${tails_asset_name[@]}"
#     do
#         cleos push action eosio.nft mintasset '['$account', "cryptoguynft", "tails", '$asset_index_tails', '$account', [],[],[]]' -p $account
#         $asset_index_tails=$((asset_index_tails+1))
#     done

















#cleos push action eosio.market uploadmarket '['$account', "cryptoguynft","bodies", '$asset_id', "'$price'.000 HEP" , "yellowbody", 61, '$account', [],[],[]]' -p $account


exit 0;
