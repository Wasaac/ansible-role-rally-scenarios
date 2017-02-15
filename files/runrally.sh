#!/bin/sh

source /home/rally/rally/bin/activate

for deployment in /home/rally/tasks/*; do
        if [[ -d "$deployment" ]]; then
                DEP=`basename $deployment`
                rally deployment use "$DEP"
        else
                continue
        fi

        for task in $deployment/*
                do
                if [[ -f "$task" ]]
                then
                        rally task start "$task"
			sleep 60
                fi
        done
done

deactivate

