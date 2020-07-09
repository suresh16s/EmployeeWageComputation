
#!/bin/bash -x
#variables
Wage_per_hour=20
Full_day_hour=8
Part_time_hour=4
Full_time=1
Half_time=2
Absent=0

isPresent=$(( RANDOM%3 ))
case $isPresent in
	$Full_time)
        echo "Employee is Present:"
        Daily_wage=$(( $Wage_per_hour * $Full_day_hour )) ;;

	$Half_time)
        echo "Employee is part time Present:"
        Daily_wage=$(( $Wage_per_hour* $Part_time_hour )) ;;

	$Absent)
        echo "Employee is Absent:"
        Daily_wage=0
esac
echo "The Daily wage is:$Daily_wage"
