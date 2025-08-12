#!/bin/bash
read option
if [ "$option" = "home" ]; then
	ls $HOME
elif [ "$option" = "silly" ]; then
	uwusay
fi