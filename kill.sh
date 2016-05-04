while true; do
    echo "Killed Avira"
    kill -9 $(pgrep telegram-cli)
    sleep 2000
done
