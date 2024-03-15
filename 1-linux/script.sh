#!/bin/bash

task_1 (){
echo "1:"
echo ~$HOME
}

task_2 (){
echo ""
echo "2:"
getent /etc/passwd | cut -d: -f1 | sort -r
}

task_3 (){
echo ""
echo "3:"
cut -d: -f1 /etc/passwd | wc -l
}

task_4 (){
echo ""
echo "4:"
echo "Enter username"
read username
eval echo "~$username"
}

task_5 () {
echo ""
echo "5:"
awk -F: '($3 >= 1000) && ($3 <= 1010)' /etc/passwd | cut -d: -f1
}

task_6 () {
echo ""
echo "6:"
awk -F: '($7 == "/bin/bash")' /etc/passwd | cut -d: -f1
}

task_7 (){
echo ""
echo "7:"
while IFS='' read -r a; do
    echo "${a//\//\\/}"
done < /etc/passwd > /tmp/file.txt.t
mv /tmp/file.txt{.t,}
echo "Find the file in /tmp/file.txt"
}

task_8 (){
echo ""
echo "8:"
hostname --ip-address
}

task_9 (){
echo ""
echo "9:"
curl ipinfo.io/ip
echo ""
}

task_10 (){
echo ""
echo "10:"
su john
echo "User changed"
}

task_11 (){
echo ""
echo "11:"
echo $HOME
}

task_1
task_2
task_3
task_4
task_5
task_6
task_7
task_8
task_9
task_10
task_11

