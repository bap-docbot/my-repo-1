#!/usr/bin/env sh

su runner
whoami


echo aaa > myfile
cp myfile /drive

ls -l

ls -l /drive
