[[ $(pmset -g sched | grep -E "poweron at 7:00AM every day|shutdown at 2:30AM every day") ]] || exit 1
