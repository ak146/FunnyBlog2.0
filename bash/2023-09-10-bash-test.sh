total_questions = len(function successOrFail) {
    if [ $? -eq 0 ]
    then
        # Print the success message if it did work
        echo -e $1
        return 0
    else
        # Print the fail message if it didn't work
        echo -e $2
        return 1
    fi
}
function replaceline {
echo -e "\e[93m============================ replace(or add) $3 in $1"
   if grep -qF "$2" $1;then
       echo -e "\e[93m pattern \e[38;5;9m[$2]\e[93m found and replaced by \e[38;5;9m[$3]"
       sed -i "/${2}/c $3" $1
   else
       echo -e "\e[93m pattern \e[38;5;9m[$2]\e[93m not found. \e[38;5;9m[$3]\e[93m added"
       echo "$3" >> $1
   fi
}
function addline {
   echo -e "\e[92m============================"
   echo -e "add \e[0m$2 \e[92min \e[0m$1"
   echo $2 >> $1
}
# function removeline {
#     echo -e "\e[38;5;9m============================"
#     echo -e "remove lines with \e[38;5;9m$2 \e[0min \e[38;5;9m$1"
#     fgrep -v $2 $1 > $1.tmp
#     mv $1.tmp $
# }
function removeline {
    echo -e "\e[38;5;9m============================"
    echo -e "remove lines with \e[38;5;9m$2 \e[0min \e[38;5;9m$1"
    fgrep -v $2 $1 > $1.tmp
    mv $1.tmp $1
}
function root {
  if [[ $EUID -ne 0 ]]; then
      echo -e "\e[38;5;9mERROR: This command must be run as root!"
      exit 1
  fi
}
function confirmPrompt() {
    while true; do
        read -p "Do you want to $1? (y/n): " choice
        case $choice in
            [Yy]* ) return 0;;
            [Nn]* ) return 1;;
            * ) echo "Please answer 'yes' or 'no'.";;
        esac
    done
}
{
if $(lsb_release -a | grep -q "22"); then
    os_version=22
elif $(lsb_release -a | grep -q "20"); then
    os_version=20
fi } 2>/dev/nullquestions