function giterit() {
    (
        cd $1
        notify-send -t 500 "$(git pull): $1"
    ) &
}

notify-send -t 100000 "Waiting for Internet..."

nm-online >>/dev/null

swaync-client --close-latest

while read -r dir && [[ -n "$dir" ]]; do
    giterit $dir
done

wait

notify-send -t 3000 "Synced!"
