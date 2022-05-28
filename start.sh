for drive in D E F G H I J K
do
	OUTPUT=$(pwd)
	echo "${OUTPUT}"
    	cp -r ScriptFiles/ $drive:/
	cp start.sh $drive:/
	cp boom.sh $drive:/
	cd $drive:/
	sh ./boom.sh
done
