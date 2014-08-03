#!/bin/bash

logFile="$HOME/.bitcoin/debug.log"
declare -A userAgentCounts
totalLogEntries=0

while read line; do
  userAgent=$(awk '{print $6}' < <(echo "$line"))
  let "userAgentCounts[$userAgent]+=1"
  let "totalLogEntries+=1"
done < <(cat "$logFile" | grep 'receive version message')

printf "Total\tPercent\t   User-Agent\n"
for userAgent in "${!userAgentCounts[@]}"; do
  count=${userAgentCounts[$userAgent]}
  percent=$(bc -l <<< "$count/$totalLogEntries*100")
  printf "%d\t%.1f%%\t   %s\n" $count $percent $userAgent
done | sort -nr

