#!/bin/bash -x

#Constants
IS_PART_TIME=1;
IS_FULL_TIME=2;
EMP_RATE_PER_HR=20;
NUM_OF_WORKING_DAYS=20;
MAX_HRS_IN_MONTH=10

#variables
totalEmpHrs=0;
totalWorkingDays=0
totalSalary=0
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_OF_WORKING_DAYS ]]
do
	checkEmp=$((RANDOM%3));
	case $checkEmp in
	$IS_FULL_TIME)empHrs=8
		;;
	$IS_PART_TIME)empHrs=4
		;;
	*)empHrs=0
		;;
	esac

	totalEmpHrs=$(($totalEmpHrs+$empHrs));

done
totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))

echo "TotalSalary=$totalSalary"
