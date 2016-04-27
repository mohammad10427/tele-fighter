-- By AviraTeam https://telegram.me/avirateam
-- Devloper : MohammadArak https://telegram.me/mohammadarak
-- Bot ID: @avirabot
--      /\  \\        // ||  //------\\        /\
--     //\\  \\      //  || ||       ||       //\\
--    //__\\  \\    //   || ||______//       //__\\
--   //____\\  \\  //    || ||      \\      //____\\
--  //      \\  \\//     || ||       \\    //      \\
-- //        \\  \/      || ||        \\  //        \\

do

local function run(msg, matches)
if matches[1]:lower() == 'sticker' then
        local text = URL.escape(matches[2])
        local color = 'blue'
        if matches[3] == 'red' then
            color = 'red'
        elseif matches[3] == 'black' then
            color = 'black'
      elseif matches[3] == 'blue' then
          color = 'blue'
    elseif matches[3] == 'green' then
        color = 'green'
    elseif matches[3] == 'yellow' then
        color = 'yellow'
    elseif matches[3] == 'pink' then
        color = 'magenta'
    elseif matches[3] == 'orange' then
        color = 'Orange'
    elseif matches[3] == 'brown' then
        color = 'DarkOrange'
        end
        local font = 'mathrm'
        if matches[4] == 'bold' then
            font = 'mathbf'
        elseif matches[4] == 'italic' then
            font = 'mathit'
        elseif matches[4] == 'fun' then
            font = 'mathfrak'
        elseif matches[4] == 'arial' then
            font = 'mathrm'
        end
        local size = '700'
        if matches[5] == 'small' then 
            size = '300'
        elseif matches[5] == 'larg' then
            size = '900'
 end
local url = 'http://latex.codecogs.com/png.latex?'..'\\dpi{'..size..'}%20\\huge%20\\'..font..'{{\\color{'..color..'}'..text..'}}'
local file = download_to_file(url,'file.webp')
if msg.to.type == 'channel' then
send_document('channel#id'..msg.to.id,file,ok_cb,false)
end
end
end
return {
  patterns = {
 "^[!/#]([Ss]ticker) (.*) ([^%s]+) (.*) (small)$",
 "^[!/#]([Ss]ticker) (.*) ([^%s]+) (.*) (larg)$",
 "^[!/#]([Ss]ticker) (.*) ([^%s]+) (.*) (%d+)$",
 "^[!/#]([Ss]ticker) (.*) ([^%s]+) (bold)$",
 "^[!/#]([Ss]ticker) (.*) ([^%s]+) (italic)$",
 "^[!/#]([Ss]ticker) (.*) ([^%s]+) (fun)$",
 "^[!/#]([Ss]ticker) (.*) ([^%s]+) (arial)$",
 "^[!/#]([Ss]ticker) (.*) (red)$",
 "^[!/#]([Ss]ticker) (.*) (black)$",
 "^[!/#]([Ss]ticker) (.*) (blue)$",
 "^[!/#]([Ss]ticker) (.*) (green)$",
 "^[!/#]([Ss]ticker) (.*) (yellow)$",
 "^[!/#]([Ss]ticker) (.*) (pink)$",
 "^[!/#]([Ss]ticker) (.*) (orange)$",
 "^[!/#]([Ss]ticker) (.*) (brown)$",
 "^[!/#]([Ss]ticker) +(.*)$",
  },
  run = run,
  }
  end

-- By AviraTeam https://telegram.me/avirateam
-- Devloper : MohammadArak https://telegram.me/mohammadarak
-- Bot ID: @avirabot
--      /\  \\        // ||  //------\\        /\
--     //\\  \\      //  || ||       ||       //\\
--    //__\\  \\    //   || ||______//       //__\\
--   //____\\  \\  //    || ||      \\      //____\\
--  //      \\  \\//     || ||       \\    //      \\
-- //        \\  \/      || ||        \\  //        \\
