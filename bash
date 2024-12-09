#!/bin/bash
TASK_FILE="$1"
dob(){
read -p "Name function: " task
if [ -z "$task" ]
then
echo "No symbol"
return
fi
echo "$task" >> "$TASK_FILE"
echo "yspeshno dobavlena"
}

pro(){
if [ ! -s "$TASK_FILE" ]
then
echo "net filov"
else
echo "spisok:"
cat "$TASK_FILE"
fi
}

while true
do
echo "Выберите действие:"
echo "1. Добавить задачу" 
echo "2. Просмотреть задачи" 
echo "3. Выход" 
read -p "vedite 1,2,3" chislo
case $chislo in
1)
dob
;;
2)
pro
;;
3)
echo "vixod"
exit 0
;;
*)
echo "nevernoe chislo"
;;
esac
done
