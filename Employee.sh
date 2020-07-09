#!/bin/bash -x
echo "Welcome to employee wage computation program"
#variables
Wage_Per_Hours=20
Working_Hours=8
Part_Time_Hours=4
Absent=0
Full_Time=1
Part_Time=2
Total_Wage=0
Total_Working_Hrs=0
Total_Working_Days=0

while [[ $Total_Working_Hrs -lt 100 && $Total_Working_Days -lt 20 ]]
do
	isPresent=$(( RANDOM % 3  ))
	((Total_Working_Days++))
	case $isPresent in
		$Full_Time)
		echo "Employee is Present full time"
		Daily_Wage=$(( $Wage_Per_Hours * $Working_Hours ))
		Total_Wage=$(( $Total_Wage + $Daily_Wage ))
		Total_Working_Hrs=$(( $Total_Working_Hrs + $Working_Hours ))
		;;
		$Part_Time)
		echo "employee is  Present partime"
		Daily_Wage=$(( $Wage_Per_Hours * $Part_Time_Hours ))
		Total_Wage=$(( $Total_Wage + $Daily_Wage ))
		Total_Working_Hrs=$(( $total_Working_Hrs + $Working_Hours ))
		;;
		$Absent)
		echo "Employee is Absent"
		Daily_Wage=0
		Total_Wage=$(( $Total_Wage + $Daily_Wage ))
		;;
	esac
done
echo "Total wage is:" $Total_Wage
