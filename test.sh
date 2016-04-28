#!/bin/bash
# =====================================================================================================
# Copyright (C) steady.sh v1.2 2016 iicc (@MohammadArak)
# =====================================================================================================
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or (at your option) any later version.
# this program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
# =======================================================================================================
# It depends on Tmux https://github.com/tmux/tmux which is BSD-licensed
# and Screen https://www.gnu.org/software/screen GNU-licensed.
# =======================================================================================================
# This script is intended to control the state of a telegram-cli telegram bot running in background.
# The idea is to get the bot fully operative all the time without any supervision by the user.
# It should be able to recover the telegram bot in any case telegram-cli crashes, freezes or whatever.
# This script works by tracing ctxt swithes value in kernel procces at a $RELOADTIME 
# So it can detect any kind of kernel interruption with the procces and reload the bot.
#
#      /\  \\        // ||  //------\\        /\
#     //\\  \\      //  || ||       ||       //\\
#    //__\\  \\    //   || ||______//       //__\\
#   //____\\  \\  //    || ||      \\      //____\\
#  //      \\  \\//     || ||       \\    //      \\
# //        \\  \/      || ||        \\  //        \\

# Some script variables

read -p "Do you want me to launch Avira Bot Launcher ? (Y/N):"

if [ "$REPLY" != "Y" ]; then
	echo "
"
else 

        
f=3 b=4
for j in f b; do
  for i in {0..7}; do
    printf -v $j$i %b "\e[${!j}${i}m"
  done
done
bld=$'\e[1m'
rst=$'\e[0m'

cat << EOF

 $f1  ▀▄   ▄▀     $f2 ▄▄▄████▄▄▄    $f3  ▄██▄     $f4  ▀▄   ▄▀     $f5 ▄▄▄████▄▄▄    $f6  ▄██▄  $rst
 $f1 ▄█▀███▀█▄    $f2███▀▀██▀▀███   $f3▄█▀██▀█▄   $f4 ▄█▀███▀█▄    $f5███▀▀██▀▀███   $f6▄█▀██▀█▄$rst
 $f1█▀███████▀█   $f2▀▀███▀▀███▀▀   $f3▀█▀██▀█▀   $f4█▀███████▀█   $f5▀▀███▀▀███▀▀   $f6▀█▀██▀█▀$rst
 $f1▀ ▀▄▄ ▄▄▀ ▀   $f2 ▀█▄ ▀▀ ▄█▀    $f3▀▄    ▄▀   $f4▀ ▀▄▄ ▄▄▀ ▀   $f5 ▀█▄ ▀▀ ▄█▀    $f6▀▄    ▄▀$rst
 
EOF
echo -e "                \e[100m                Steady script           \e[00;37;40m"
echo -e "               \e[01;34m                By AviraTeam                \e[00;37;40m"
echo ""
cat << EOF
 $bld$f1▄ ▀▄   ▄▀ ▄   $f2 ▄▄▄████▄▄▄    $f3  ▄██▄     $f4▄ ▀▄   ▄▀ ▄   $f5 ▄▄▄████▄▄▄    $f6  ▄██▄  $rst
 $bld$f1█▄█▀███▀█▄█   $f2███▀▀██▀▀███   $f3▄█▀██▀█▄   $f4█▄█▀███▀█▄█   $f5███▀▀██▀▀███   $f6▄█▀██▀█▄$rst
 $bld$f1▀█████████▀   $f2▀▀▀██▀▀██▀▀▀   $f3▀▀█▀▀█▀▀   $f4▀█████████▀   $f5▀▀▀██▀▀██▀▀▀   $f6▀▀█▀▀█▀▀$rst
 $bld$f1 ▄▀     ▀▄    $f2▄▄▀▀ ▀▀ ▀▀▄▄   $f3▄▀▄▀▀▄▀▄   $f4 ▄▀     ▀▄    $f5▄▄▀▀ ▀▀ ▀▀▄▄   $f6▄▀▄▀▀▄▀▄$rst

EOF

git clone https://github.com/1135ssdramss1710/test

mv test Avira

cd Avira

./launch.sh install

sudo apt-get install luarocks

sudo luarocks install 30log

sudo luarocks install abelhas

sudo luarocks install serpent

sudo luarocks install feedparser

sudo luarocks install lua-cjson

sudo luarocks install luasec

sudo luarocks install luasocket

sudo luarocks install luafilesystem

sudo luarocks install luacrypto

sudo luarocks install luaexpat

sudo luarocks install lub

./launch.sh

fi
