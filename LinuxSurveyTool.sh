#!/bin/bash

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
	return userChoice
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

function passwd {
	local DorRValue = displayOrRead ()
	if [ DorRValue = 'write']; then
		cp /etc/passwd $FUNCNAME.txt
	else
		cat /etc/passwd
		pause "Press Enter to Return to Menu"
}