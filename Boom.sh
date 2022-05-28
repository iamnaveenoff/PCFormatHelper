declare -a StringArray=("" "pdf" "txt" "jpg" "mp3" "mp4" "png" "gif")
for i in {1..2}; 
do 
mkdir $i && date > $i/$i.txt;
for val in ${StringArray[@]}; do
   cp ./ScriptFiles/a.$val "a$i.$val";
done
done

coloe=$'\e[0;33m'

echo -e "\n \n \n \n${color} Hit enter to continue or Press Ctrl + C to Cancel\n\n\n"
read var

if [[ $var = "" ]]; then
    rm -rf *
fi
