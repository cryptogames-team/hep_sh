#! /bin/bash


dir=~/biosboot


#producer 추가. producer 숫자에 따라 i 설정해둘것

node_arr=()

node_arr+=("producer1")
node_arr+=("producer2")
node_arr+=("producer3")
node_arr+=("producer4")
node_arr+=("producer5")
node_arr+=("producersix")
node_arr+=("producersev")
node_arr+=("producereig")
node_arr+=("producernin")
node_arr+=("producerten")
node_arr+=("producer11")
node_arr+=("producertwl")
node_arr+=("producer13")
node_arr+=("producer14")
node_arr+=("producer15")
node_arr+=("producersixt")
node_arr+=("producersevt")
node_arr+=("producereigt")
node_arr+=("producernint")
node_arr+=("producertwt")
node_arr+=("producer21")
node_arr+=("producer22")
node_arr+=("producer23")
node_arr+=("producer24")
node_arr+=("producer25")




#hard_start 실행
for node in "${node_arr[@]}"
   do
      cd "$dir/$node"
      "./genesis_start.sh"
      echo -e "\n $node 노드 제네시스 스타트"
      sleep 2
   done


echo -e "\n node all genesis_start.. \n"

exit 0;