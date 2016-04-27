-- By AviraTeam https://telegram.me/avirateam
-- Devloper : MohammadArak https://telegram.me/mohammadarak
-- Bot ID: @avirabot
--      /\  \\        // ||  //------\\        /\
--     //\\  \\      //  || ||       ||       //\\
--    //__\\  \\    //   || ||______//       //__\\
--   //____\\  \\  //    || ||      \\      //____\\
--  //      \\  \\//     || ||       \\    //      \\
-- //        \\  \/      || ||        \\  //        \\

local function history(extra, suc, result)
for i=1, #result do
delete_msg(result[i].id, ok_cb, false)
end
if tonumber(extra.con) == #result then
send_msg(extra.chatid, ''..#result..' پیام اخیر سوپرگروه حذف شد 🗑', ok_cb, false)
else
send_msg(extra.chatid, 'تمام پیام های سوپر گروه حذف شد', ok_cb, false)
end
end
local function run(msg, matches)
if matches[1] == 'msgrem' and is_owner(msg) then
            if msg.to.type == 'channel' then
            if tonumber(matches[2]) > 99 or tonumber(matches[2]) < 1 then
            return "خطا عدد انتخاب شده باید زیر 100 باشد"
            end
            get_history(msg.to.peer_id, matches[2] + 1 , history , {chatid = msg.to.peer_id, con = matches[2]})
        else
                         return "فقط مخصوص سوپرگروه می باشد"
        end
else
return "فقط مخصوص مدیران گروه می باشد"
end
end
return {
    patterns = {
        '^[!/#](msgrem) (%d*)$'
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
