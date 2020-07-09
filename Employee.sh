#!/bin/bash -x
Wage_per_hour=20
Full_day_hour=8
isPresent=$(( RANDOM%2 ))
if [ $isPresent -eq 1 ]
then
	echo "Employee is Present:"
	Daily_wage=$(( $Wage_per_hour * $Full_day_hour ))
elif [ $isPresent -eq 0 ]
then
	echo "Employee is Absent:"
	Daily_wage=0;
fi
echo "The Daily wage is:$Daily_wage"
