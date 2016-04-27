-- By AviraTeam https://telegram.me/avirateam
-- Devloper : MohammadArak https://telegram.me/mohammadarak
-- Bot ID: @avirabot
--      /\  \\        // ||  //------\\        /\
--     //\\  \\      //  || ||       ||       //\\
--    //__\\  \\    //   || ||______//       //__\\
--   //____\\  \\  //    || ||      \\      //____\\
--  //      \\  \\//     || ||       \\    //      \\
-- //        \\  \/      || ||        \\  //        \\

local function run(msg, matches,success)

local about = matches[2]
local chat = 'channel#id'..msg.to.id
        if msg.to.type == 'channel' and matches[1] == 'setabout' then
        local about = matches[2]
        channel_set_about(chat, about, ok_cb, false)
        return 'درباره گروه تنظیم شد به : \n'..about..''
    end
end

  return {
    patterns = {
      "^[!/#](setabout) (.+)$",
    }, 
    run = run 
  }

-- By AviraTeam https://telegram.me/avirateam
-- Devloper : MohammadArak https://telegram.me/mohammadarak
-- Bot ID: @avirabot
--      /\  \\        // ||  //------\\        /\
--     //\\  \\      //  || ||       ||       //\\
--    //__\\  \\    //   || ||______//       //__\\
--   //____\\  \\  //    || ||      \\      //____\\
--  //      \\  \\//     || ||       \\    //      \\
-- //        \\  \/      || ||        \\  //        \\
