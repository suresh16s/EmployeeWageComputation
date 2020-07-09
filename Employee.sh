#!/bin/bash
echo "Welcome to Employmee wage calculation program"
Wageperhr=20
PartTime=2
Fulltime=1
EmpHrs=0
declare -A empdailywage
function getHrs() {
Checkemp=$1
case $Checkemp in
        $PartTime)
                EmpHrs=4

                ;;
        $Fulltime)
                EmpHrs=8

                ;;
        *)
                EmpHrs=0

                ;;
esac
echo $EmpHrs
}
Workingdays=20
Totalsalary=0
Totalemphr=0
Totalworkingdays=0
while [ $Totalemphr -lt 100 -a $Totalworkingdays -lt 20 ]
do
        ((Totalworkingdays++))
        EmpHrs="$( getHrs $((RANDOM % 3)) )"
        Totalemphr=$(($Totalemphr + $EmpHrs))
        empdailywage[ "Day "$Totalworkingdays ]=$(($EmpHrs*$Wageperhr))
done
Totalsalary=$(($Totalemphr*$Wageperhr))
for i in "${!empdailywage[@]}"
do
        echo -e "$i "-" ${empdailywage[$i]}"
done
echo "total salary is $Totalsalary"
