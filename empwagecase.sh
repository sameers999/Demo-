	
#!/bin/bash

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
empcheck=$((RANDOM%3));

case $empcheck in
	$isFullTime)
		empHrs=8
		;;
	$isPartTime)
		empHrs=4
		;;
	*)
		empHrs=0
		;;
esac

salary=$(($empHrs*$empRatePerHr));
