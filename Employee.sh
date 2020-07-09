#!/bin/bash -x
echo "Welcome to employee wage computation program"
Wage_per_hours=20
Working_days_per_month=20
Absent=0
Full_time=1
Part_time=2
Total_wage=0
Total_working_hrs=0
Total_working_days=0
function Getworkhours () {
	local CheckEmp=$1
	case $CheckEmp in
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
	((Total_working_days++))
	Working_hrs=$( Getworkhours $isPresent )
	Daily_wage=$(( $Wage_per_hours * $Working_hrs ))
	Total_wage=$(( $Total_wage + $Daily_wage ))
	Total_working_hrs=$(( $Total_working_hrs + $Working_hrs ))
done
echo "Total wage is:"$Total_wage
