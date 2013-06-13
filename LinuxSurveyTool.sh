#!/bin/bash

#might need to use global values intead of returns, we shall see...

function menu {
	clear
	echo "************************"
	echo "* Linux Survey Tool *"
	echo "************************"
	echo "* [FM] Magic (warning wall of text) *"
	echo "* [0] Process List *"
	echo "* [1] Netstat *"
	echo "* [2] User Log In Information*"
	echo "* [3] Interface Information*"
	echo "* [3.5] ID Information*"
	echo "* [4] Route Information *"
	echo "* [5] Current Directory *"
	echo "* [6] Computer Uptime*"
	echo "* [7] Shadow and Passwd*"
	echo "* [8] Memory Information*"
	echo "* [9] CPU Information*"
	echo "* [10] Mount Information*"
	echo "* [11] Arp Information*"
	echo "* [12] Group Information*"
	echo "* [13] Files Touched in The Last Day*"
	echo "* [14] Check groups a User is in (root by default)*"
	echo "* [15] All Proc Information*"
	echo "* [16] Uname -a*"
	echo "* [17] Diskspace Information*"
	echo "* [18] Disk Usage by File*"
	echo "* [exit] Exit/Stop *"
	echo "************************"
	echo -n "Enter your menu choice [a-0]: "
	read userChoice
	if [ $userChoice -ge 0 -a $usershoice -le 18 -o "$userchoice" = "exit" -o  "$userchoice" = "FM"]; then
		return userChoice
	else
		menu()
}

function pause(){
	read -p "$*"
}

function setUpEv {
	mkdir surveyTemp
	cd surveyTemp
}

function clearnUp {
	cd ..
	tar -cvf survey.tar /surveyTemp
	rm -rf surveyTemp
}

function displayOrRead {
	echo -n "Do you want the results [W]ritten out or [D]isplayed?"
	read displayOrNo
	if [ displayOrNo = "W"]; then
		return write
	elif [ displayOrNo = "D"]; then
		return display
	else
		echo "Bad Choice!!!"
		displayOrRead()
}

function ps {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		ps -A -F -c --forest -H > $FUNCNAME.txt
	else
		ps -A -F -c --forest -H
		pause "Press Enter to Return to Menu"
}

function netstat {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		netstat -v -W -n -e -p -a > $FUNCNAME.txt
	else
		netstat -v -W -n -e -p -a
		pause "Press Enter to Return to Menu"
}

function last {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		last -d -i -F -x -a > $FUNCNAME.txt
	else
		last -d -i -F -x -a
		pause "Press Enter to Return to Menu"
}

function id {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		id > $FUNCNAME.txt
	else
		id
		pause "Press Enter to Return to Menu"
}

function id {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		id > $FUNCNAME.txt
	else
		id
		pause "Press Enter to Return to Menu"
}

function ifconfig {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		ifconfig -a -v > $FUNCNAME.txt
	else
		ifconfig -a -v
		pause "Press Enter to Return to Menu"
}

function route {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		route -v -n -ee > $FUNCNAME.txt
	else
		route -v -n -ee
		pause "Press Enter to Return to Menu"
}

function pwd {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		pwd > $FUNCNAME.txt
	else
		pwd
		pause "Press Enter to Return to Menu"
}

function uptime {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		uptime > $FUNCNAME.txt
	else
		uptime
		pause "Press Enter to Return to Menu"
}

function passwd {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		cp /etc/passwd $FUNCNAME.txt
	else
		cat /etc/passwd
		pause "Press Enter to Return to Menu"
}

function shadow {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		cp /etc/shadow $FUNCNAME.txt
	else
		cat /etc/shadow
		pause "Press Enter to Return to Menu"
}

function meminfo {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		cp /proc/meminfo $FUNCNAME.txt
	else
		cat /proc/meminfo
		pause "Press Enter to Return to Menu"
}

function cpuinfo {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		cp /proc/cpuinfo $FUNCNAME.txt
	else
		cat /proc/cpuinfo
		pause "Press Enter to Return to Menu"
}

function mount {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write' ]; then
		mount -l > $FUNCNAME.txt
	else
		mount -l
		pause "Press Enter to Return to Menu"
}

function arp {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write' ]; then
		arp -a -v > $FUNCNAME.txt
	else
		arp -a -v
		pause "Press Enter to Return to Menu"
}

function groupInfo {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write' ]; then
		cp /etc/group $FUNCNAME.txt
	else
		cat /etc/group
		pause "Press Enter to Return to Menu"
}

function lastDay {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		sudo find -L / -mtime -1 -ctime -1 -atime -1  > $FUNCNAME.txt
	else
		sudo find -L / -mtime -1 -ctime -1 -atime -1
		pause "Press Enter to Return to Menu"
}

function lastDay {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		sudo find -L / -mtime -1 -ctime -1 -atime -1  > $FUNCNAME.txt
	else
		sudo find -L / -mtime -1 -ctime -1 -atime -1
		pause "Press Enter to Return to Menu"
}
function groupInfo {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		cp /etc/group $FUNCNAME.txt
	else
		cat /etc/group
}

#Fair Warning Don't Know if this works write
function sudoers {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		cp /etc/sudoers > $FUNCNAME.txt
	else
		cat /etc/sudoers
}

function dateTime {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		date > $FUNCNAME.txt
		time >> $FUNCNAME.txt
	else
		date
		time
}


function systemInfo {
	local DorRValue = displayOrRead ()
	local FILES=/proc/*
	if [ DorRValue = 'write']; then
		touch $FUNCNAME.txt
		for f in $FILES
			do
				echo "" >> $FUNCNAME.txt
				echo "--------------------" $f "-----------------------" >> $FUNCNAME.txt
				cat $f >> $FUNCNAME.txt
			done
	else
		for f in $FILES
			do
				echo ""
				echo "--------------------" $f "-----------------------"
				cat $f
			done
}

function uname {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		uname -a > $FUNCNAME.txt
	else
		uname -a
}

function df {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		df -a > $FUNCNAME.txt
	else
		df -a
}

function du {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		du -a > $FUNCNAME.txt
	else
		du -a
}

###########Main############
writeFlag=0
clear
choice=$(menu())

case $choice in
FM) ;;
0)  ;;
1)  ;;
2)  ;;
3)  ;;
4)  ;;
5)  ;;
6)  ;;
7)  ;;
8)  ;;
9)  ;;
10)  ;;
11)  ;;
12)  ;;
13)  ;;
14)  ;;
15)  ;;
16)  ;;
17)  ;;
18)  ;;
exit) exit 0;;
*) echo "You got by one round of data validation, are you a bad person?";
echo "Press Enter to continue. . ." ; choice=$(menu()) ; read ;;

	