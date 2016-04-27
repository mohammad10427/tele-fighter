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

function run(msg, matches)
       if not is_momod(msg) then
        return "فقط مخصوص مدیران می باشد"
       end
    local data = load_data(_config.moderation.data)
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
        return "اول باید لینک جدید ایجاد کنید\nسپس شماره ربات را سیو کنید\nتوجه کنید که باید ربات سازنده گروه باشد در غیر این صورت لینک به پیوی شما ارسال نمی شود"
       end
         local text = "لینک گروه:\n"..group_link
          send_large_msg('user#id'..msg.from.id, text.."\n", ok_cb, false)
           return "لینک به پیوی شما ارسال شد"
end

return {
  patterns = {
    "^[/#!]([Ll]inkpv)$"
  },
  run = run
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
