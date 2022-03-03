
#!/bin/bash

isPartTime=1;
isFullTime=2;
empRateParHr=20;
randomcheck=$((random%3));

if [ $isFullTime -eq $randomCheck ];
then

		empHrs=8;
else [ $isPartTime -eq $randomCheck ];
then

		empHrs=4;
else
	empHrs=0;
fi
salary=$(($empHrs*$empRatePerHr));
