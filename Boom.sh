declare -a StringArray=("" "pdf" "txt" "jpg" "mp3" "mp4" "png" "gif")
for i in {1..5}; 
do 
mkdir $i && date > $i/$i.txt;
for val in ${StringArray[@]}; do
   cp ./ScriptFiles/a.$val "a$i.$val";
done
done

GREEN=$'\e[0;32m'

echo "\n \n \n \n${GREEN} Hit enter to continue or Press Ctrl + C to Cancel"
read var

if [[ $var = "" ]]; then
    rm -rf *
fi
