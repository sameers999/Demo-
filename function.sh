
#!/bin/bash -x

check=1
function myFunction(){
	echo $1
}

eandom=$((RANDOM%2))

result="$( myFunction $((RANDOM%2)) )"
if [ $result -eq $check ]
then
	echo "success";
else
	echo "failure"
fi

