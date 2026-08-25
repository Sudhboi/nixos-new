function gitit() {
    (
        cd "$1"
        git add .
        git commit -m "$(date) - Sync Commit" >>"/home/sudhirk/.logs/$(basename "$1").log"
        git push >>"/home/sudhirk/.logs/$(basename "$1").log"
    ) &
}

notify-send "Syncing..."

while read -r dir && [[ -n "$dir" ]]; do
    gitit $dir
done

wait
