#!/bin/bash
cat text.txt | tr '[:upper:]' '[:lower:]' | tr -d '"' | tr -d ',' | tr -d '/.' | tr ' ' '\n' | sort | uniq | xargs -I arg sh -c "echo -n 'arg:';tre-agrep -Bsw arg dic.txt" | egrep '[a-z]+:[^0]' 
