#!/bin/bash

WORK_END_HOUR=18
WORK_END_MIN=0

CURRENT_TIME=$(date +"%H:%M")
RAW_HOUR=$(date +"%H")
RAW_MIN=$(date +"%M")

CURRENT_HOUR=$((10#$RAW_HOUR))
CURRENT_MIN=$((10#$RAW_MIN))

NOW_TOTAL_MINS=$((CURRENT_HOUR * 60 + CURRENT_MIN))
END_TOTAL_MINS=$((WORK_END_HOUR * 60 + WORK_END_MIN))

DIFF_MINS=$((END_TOTAL_MINS - NOW_TOTAL_MINS))

if [ $DIFF_MINS -le 0 ]; then
    echo "Current time: ${CURRENT_TIME}. The work day has already ended!"
else
    HOURS_LEFT=$((DIFF_MINS / 60))
    MINS_LEFT=$((DIFF_MINS % 60))
    echo "Current time: ${CURRENT_TIME}. Work day ends after ${HOURS_LEFT} hours and ${MINS_LEFT} minutes."
fi
