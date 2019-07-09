@echo off

doskey ls=dir /W
doskey mv=move $*
doskey cp=copy $*
doskey cat=type $*
doskey rm=DEL $*
doskey st=git status
doskey ci=git commit -m $*
