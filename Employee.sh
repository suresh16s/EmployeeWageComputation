#!/bin/bash  
echo "Welcome to employee wage computation program"
#constants
Wage_per_hours=20
Working_days_per_month=20
Absent=0
Full_time=1
Part_time=2
#variables
Total_wage=0
Total_working_hrs=0
Total_working_days=0
declare -A Dailywage
declare -A Totalwage

function getWorkHours () {
	local Checkemp=$1
	case $Checkemp in
		$Full_time)
			Emp_hrs=8
			;;
		$Part_time)
			Emp_hrs=4
			;;
		$Absent)
			Emp_hrs=0
			;;
	esac
echo $Emp_hrs
}
while [[ $Total_working_hrs -lt 100 && $Total_working_days -lt 20 ]]
do
	isPresent=$(( RANDOM % 3  ))
	Working_hrs=$( getWorkHours $isPresent )
	Daily_wage[Total_working_days]=$(( $Wage_per_hours * $Working_hrs ))
	Total_wage=$(( $Total_wage + ($Wage_per_hours * $Working_hrs)  ))
	Total_wage[$Total_working_days]=$Total_wage
	Total_working_hrs=$(( $Total_working_hrs + $Working_hrs ))
	((Total_working_days++))
done

echo "Daily wages" - "Total Wages "
for (( i=0; i<$Total_working_days; i++ ))
do
	echo ${Daily_wage[$i]}"- "${Total_wage[$i]}
done

