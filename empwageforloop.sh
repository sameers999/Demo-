



#!/bin/bash -x

#constants
IS_PART_TIME=1;
IS_FULL_TIME=2;
EMP_RATE_PER_HR=20;
NUM_OF_WORKING_DAYS=20;
totalSalary=0;

for (( day=1 ; day<=$NUM_OF_WORKING_DAYS ; day++ ))
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
	salary=$(($EMP_RATE_PER_HR*$empHrs));
	totalSalary=$(($totalSalary+$salary));
	echo "Salary=$totalSalary";
done

