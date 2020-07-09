#!/bin/bash 
#variables
Wage_per_hour=20
Full_day_hour=8
Part_time_hour=4
Full_time=1
Half_time=2
workingDaysPerMonth=20
Absent=0
Month_wage=0

for (( count=0; count<$workingDaysPerMonth; count++ ))
do
	isPresent=$(( RANDOM%3 ))
	case $isPresent in
        	$Full_time)
        	echo "Employee is Present:"
        	Daily_wage=$(( $Wage_per_hour * $Full_day_hour ))
		Month_wage=$(( $Month_wage + $Daily_wage )) ;;

        	$Half_time)
        	echo "Employee is part time Present:"
        	Daily_wage=$(( $Wage_per_hour* $Part_time_hour ))
		Month_wage=$(( $Month_wage + $Daily_wage )) ;;


        	$Absent)
        	echo "Employee is Absent:"
        	Month_wage=0 ;;
	esac
done
echo "The Monthly wage is:$Month_wage"

