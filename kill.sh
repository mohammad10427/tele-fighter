read -p "Do You Want Me To Run Avira Auto Bot Killer ? (Y/N):"

if [ "$REPLY" != "Y" ]; then
	echo "
"
else 

while true; do
    echo "Killed Avira"
    kill -9 $(pgrep telegram-cli)
    sleep 2000
done
