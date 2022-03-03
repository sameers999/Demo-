
#!/bin/bash -x

#constants
IS_PART_TIME=1;
IS_FULL_TIME=2;
EMP_RATE_PER_HR=20;
NUM_OF_WORKING_DAYS=20;
MAX_HRS_IN_MONTH=10
TOTAL_WORKING_HRS=40
#VARIABLES
totalEmpHrs=0;
totalWorkingDays=0
totalSAlary=0
totalEmpHrs=0

function getWorkingHrs(){

  case $1 in
  $IS_FULL_TIME)empHrs=8
	;;
  $IS_PART_TIME)empHrs=4
	;;
  *)empHrs=0
	;;

  esac
	echo $empHrs
}

while [[ $day -le $NUM_OF_WORKING_DAYS && $totalEmpHrs -lt $TOTAL_WORKING_HRS ]]
do
	workingHrs=$(getWorkingHrs $((RANDOM%3)));
	totalEmpHrs=$(($totalEmpHrs+$workingHrs));
	if [ $totalEmpHrs -gt $TOTAL_WORKING_HRS ]
	then
		totalEmpHrs=$(($totalEmpHrs-$workingHrs))
		break
	fi
	salary=$(($EMP_RATE_PER_HR*$workingHrs))
	totalSalary=$(($totalSalary+$salary))
	echo "day $day salary $totalSalary"
done
echo "TotalSalary=$totalSalary"

